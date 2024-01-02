import 'package:avnon_pre_interview/contracts/question.dart';
import 'package:avnon_pre_interview/contracts/question_line.dart';
import 'package:avnon_pre_interview/providers/form_provider.dart';
import 'package:avnon_pre_interview/widgets/interactive_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              const FormTitle(),
              const Gap(16),
              ...userForm.questions.map((e) => renderQuestion(e)).toList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget renderQuestion(Question question) {
    return QuestionLineItem(
        question: question,
        onTypeChange: (QuestionType type) {
          ref
              .read(userFormListProvider.notifier)
              .changeQuestionType(question, type);
        });
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
                        data: e,
                        onSelect: () {},
                        onDelete: () {
                          ref
                              .read(userFormListProvider.notifier)
                              .removeQuestionList(question, e);
                        },
                      );
                    },
                  ),
                  if (question.questions.length < max)
                    AddOptionLineItem(
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
  final VoidCallback? onSelect;
  final VoidCallback? onDelete;

  const OptionLineItem(
      {super.key, required this.data, required this.onSelect, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.sp),
      child: Row(children: [
        Checkbox.adaptive(value: true, onChanged: (e) {}),
        Expanded(
          child: InteractiveTextField(
            value: data.question,
            onChanged: (value) {},
          ),
        ),
        IconButton(
          onPressed: () {
            onDelete?.call();
          },
          color: Theme.of(context).colorScheme.error,
          icon: const Icon(Icons.delete),
        )
      ]),
    );
  }
}

class AddOptionLineItem extends StatelessWidget {
  final Question data;
  final VoidCallback? onSelect;
  final VoidCallback? onAddOther;

  const AddOptionLineItem({
    super.key,
    required this.data,
    this.onSelect,
    this.onAddOther,
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
