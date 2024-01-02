import 'package:avnon_pre_interview/contracts/question.dart';
import 'package:avnon_pre_interview/contracts/question_line.dart';
import 'package:avnon_pre_interview/helpers/debouncer.dart';
import 'package:avnon_pre_interview/providers/form_provider.dart';
import 'package:avnon_pre_interview/widgets/interactive_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class QuestionScreen extends ConsumerStatefulWidget {
  const QuestionScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QuestionScreenState();
}

class FormKeys {
  static const String title = 'title';
  static const String description = 'description';
  static const String type = 'type';
  static const String options = 'options';
}

class _QuestionScreenState extends ConsumerState<QuestionScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final userForm = ref.watch(userFormListProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...userForm.questions.map((e) => renderQuestion(e)).toList(),
              Gap(16.sp),
              MaterialButton(
                minWidth: double.infinity,
                color: Theme.of(context).colorScheme.primary,
                onPressed: () {},
                child: Text(
                  "Review",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget renderQuestion(Question question) {
    return Container(
      padding: EdgeInsets.only(bottom: 16.sp),
      child: QuestionLineItem(
          question: question,
          onTypeChange: (QuestionType type) {
            ref
                .read(userFormListProvider.notifier)
                .changeQuestionType(question, type);
          }),
    );
  }
}

class QuestionLineItem extends ConsumerWidget {
  final Question question;
  final void Function(QuestionType type)? onTypeChange;
  final int max;
  const QuestionLineItem({
    super.key,
    required this.question,
    this.onTypeChange,
    this.max = 5,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.sp),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InteractiveTextField(
              value: question.title,
              onChanged: (value) {
                ref
                    .read(userFormListProvider.notifier)
                    .changeQuestionTitle(question, value);
              },
            ),
            Gap(16.sp),
            DropdownMenu<String>(
              initialSelection: question.type.name,
              onSelected: (String? value) {
                onTypeChange?.call(QuestionType.parse(value));
              },
              dropdownMenuEntries: QuestionType.items
                  .map<DropdownMenuEntry<String>>((QuestionType value) {
                return DropdownMenuEntry<String>(
                    value: value.name, label: value.name);
              }).toList(),
            ),
            if (question.type == QuestionType.multiple)
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(8.sp),
                  ...question.questions.map(
                    (e) {
                      return OptionLineItem(
                        controller: TextEditingController(text: e.question),
                        data: e,
                        onEdit: (editable) {
                          ref
                              .read(userFormListProvider.notifier)
                              .markQuestionListEditable(question, e, editable);
                        },
                        onCheck: (value) {
                          ref
                              .read(userFormListProvider.notifier)
                              .checkQuestionListTextAt(question, e, value);
                        },
                        onTextChange: (value) {
                          ref
                              .read(userFormListProvider.notifier)
                              .changeQuestionListTextAt(question, e, value);
                        },
                        onDelete: () {
                          ref
                              .read(userFormListProvider.notifier)
                              .removeQuestionList(question, e);
                        },
                        onLongAnswerTextChange: (value) {
                          ref
                              .read(userFormListProvider.notifier)
                              .changeQuestionListLongAnswerTextAt(
                                  question, e, value);
                        },
                      );
                    },
                  ),
                  if (question.questions.length < max)
                    AddOptionLineItem(
                        hasOther: question.questions
                            .any((element) => element.isOther),
                        data: question,
                        onAddOther: () {
                          ref
                              .read(userFormListProvider.notifier)
                              .addOtherQuestionList(question);
                        },
                        onSelect: () {
                          ref
                              .read(userFormListProvider.notifier)
                              .addMoreQuestionList(question);
                        })
                ],
              ),
            if (question.type == QuestionType.paragraph)
              Container(
                padding: EdgeInsets.all(16.sp),
                child: InteractiveTextField(
                  value: question.longQuestion,
                  maxLines: 5,
                  maxLength: 512,
                  labelText: 'Long answer text',
                  // controller: TextEditingController.fromValue(
                  //   TextEditingValue(text: question.longQuestion),
                  // ),
                  onChanged: (value) {
                    ref
                        .read(userFormListProvider.notifier)
                        .changeQuestionParagraph(question, value);
                  },
                ),
              ),
            const Divider(),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        ref
                            .read(userFormListProvider.notifier)
                            .cloneQuestion(question);
                      },
                      icon: const Icon(FontAwesomeIcons.clone)),
                  const Gap(16),
                  IconButton(
                      onPressed: () {
                        ref
                            .read(userFormListProvider.notifier)
                            .removeQuestion(question);
                      },
                      icon: Icon(
                        FontAwesomeIcons.xmark,
                        color: Theme.of(context).colorScheme.error,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FormTitle extends ConsumerWidget {
  const FormTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userForm = ref.watch(userFormListProvider);

    return Card(
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16.sp),
          child: Column(
            children: [
              InteractiveTextField(
                value: userForm.title,
                labelText: 'Title',
                onChanged: (value) {
                  ref.read(userFormListProvider.notifier).setTitle(
                        value,
                      );
                },
              ),
              const Gap(16),
              InteractiveTextField(
                value: userForm.description,
                labelText: 'Description',
                onChanged: (value) {
                  ref.read(userFormListProvider.notifier).setDescription(
                        value,
                      );
                },
              ),
            ],
          )),
    );
  }
}

class OptionLineItem extends StatelessWidget {
  final QuestionLine data;
  final VoidCallback? onDelete;
  final void Function(bool editable)? onEdit;

  final void Function(String value)? onTextChange;
  final void Function(String value)? onLongAnswerTextChange;

  final void Function(bool? value)? onCheck;

  final TextEditingController controller;
  final TextEditingController? otherController;

  final Debouncer _debouncer = Debouncer(milliseconds: 500);

  OptionLineItem({
    super.key,
    required this.data,
    this.onDelete,
    this.onEdit,
    required this.controller,
    required this.onTextChange,
    required this.onLongAnswerTextChange,
    required this.onCheck,
    this.otherController,
  });

  @override
  Widget build(BuildContext context) {
    if (data.isOther) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 8.sp),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Checkbox.adaptive(
                    value: data.checked,
                    onChanged: (e) {
                      onCheck?.call(e ?? false);
                    }),
                Expanded(child: Text(data.question ?? '')),
                IconButton(
                  onPressed: () {
                    onDelete?.call();
                  },
                  color: Theme.of(context).colorScheme.error,
                  icon: const Icon(Icons.delete),
                )
              ],
            ),
            if (data.checked)
              Container(
                padding: EdgeInsets.only(left: 16.sp),
                child: InteractiveTextField(
                  controller: otherController,
                  value: data.longAnswer,
                  labelText: 'Enter text',
                  onChanged: (value) {
                    _debouncer.run(() {
                      onLongAnswerTextChange?.call(value);
                    });
                  },
                ),
              ),
          ],
        ),
      );
    }
    return TapRegion(
      onTapOutside: (event) {
        onEdit?.call(false);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.sp),
        child: Row(children: [
          Checkbox.adaptive(
              value: data.checked,
              onChanged: (e) {
                onCheck?.call(e ?? false);
              }),
          Expanded(
            child: data.editable
                ? InteractiveTextField(
                    controller: controller,
                    value: data.question,
                    onChanged: (value) {
                      _debouncer.run(() {
                        onTextChange?.call(value);
                      });
                    },
                  )
                : InkWell(
                    onTap: () {
                      onEdit?.call(true);
                    },
                    child: Text(
                      data.question ?? '',
                    )),
          ),
          IconButton(
            onPressed: () {
              onDelete?.call();
            },
            color: Theme.of(context).colorScheme.error,
            icon: const Icon(Icons.delete),
          )
        ]),
      ),
    );
  }
}

class AddOptionLineItem extends StatelessWidget {
  final Question data;
  final VoidCallback? onSelect;
  final VoidCallback? onAddOther;
  final bool hasOther;

  const AddOptionLineItem({
    super.key,
    required this.data,
    this.onSelect,
    this.onAddOther,
    required this.hasOther,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.sp),
      width: 200.sp,
      child: Row(children: [
        Checkbox.adaptive(value: false, onChanged: (e) {}),
        InkWell(
          child: const Text('Add Option'),
          onTap: () {
            onSelect?.call();
          },
        ),
        if (!hasOther)
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: ' or ',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  decoration: TextDecoration.none,
                ),
              ),
              TextSpan(
                  text: 'Add Other',
                  style: const TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.none,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      onAddOther?.call();
                    })
            ]),
          ),
      ]),
    );
  }
}
