import 'package:avnon_pre_interview/contracts/question.dart';
import 'package:avnon_pre_interview/contracts/question_line.dart';
import 'package:avnon_pre_interview/contracts/user_form.dart';
import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'form_provider.g.dart';

// UserFormList
@riverpod
class UserFormList extends _$UserFormList {
  @override
  UserForm build() {
    return UserForm(title: 'User Form', description: 'Description');
  }

  void setTitle(String value) {
    state = state.copyWith(title: value);
  }

  void setDescription(String value) {
    state = state.copyWith(description: value);
  }

  void addQuestion(Question question) {
    state = state.copyWith(questions: [...state.questions, question]);
  }

  void changeQuestionType(Question question, QuestionType type) {
    final index = state.questions.indexWhere((e) => e.id == question.id);

    final modified = [...state.questions];
    modified[index] = modified[index].copyWith(type: type);

    state = state.copyWith(questions: modified);
  }

  void changeQuestionTitle(Question question, String title) {
    final index = state.questions.indexWhere((e) => e.id == question.id);

    final modified = [...state.questions];
    modified[index] = modified[index].copyWith(title: title);

    state = state.copyWith(questions: modified);
  }

  void addMoreQuestionList(
    Question question,
  ) {
    final index = state.questions.indexWhere((e) => e.id == question.id);

    final modified = [...state.questions];
    final len = modified[index].questions.length + 1;
    modified[index] = modified[index].copyWith(questions: [
      ...modified[index].questions,
      QuestionLine(
        id: const Uuid().v4(),
        question: 'Option $len',
      )
    ]);
    state = state.copyWith(questions: modified);
  }

  void addOtherQuestionList(Question question) {
    final index = state.questions.indexWhere((e) => e.id == question.id);
    final modified = [...state.questions];

    modified[index] = modified[index].copyWith(questions: [
      ...modified[index].questions,
      QuestionLine(id: const Uuid().v4(), question: 'Other...', isOther: true)
    ]);
    state = state.copyWith(questions: modified);
  }

  void removeQuestionList(Question question, QuestionLine e) {
    final index = state.questions.indexWhere((e) => e.id == question.id);

    final modified = [...state.questions];
    modified[index] = modified[index].copyWith(
      questions: [
        ...modified[index]
            .questions
            .where((element) => element.id != e.id)
            .toList()
      ],
    );
    state = state.copyWith(questions: modified);
  }

  void changeQuestionListTextAt(
      Question question, QuestionLine e, String value) {
    final index = state.questions.indexWhere((e) => e.id == question.id);

    final modified = [...state.questions];
    final questionList = modified[index].questions;
    var itemIdx = questionList.indexWhere((element) => element.id == e.id);
    if (itemIdx < 0) return;

    var newItem = questionList[itemIdx].copyWith(question: value);
    var newQuestionList = [
      ...questionList.slice(0, itemIdx),
      newItem,
      ...questionList.slice(itemIdx + 1)
    ];

    // questionList.replaceRange(start, end, replacements)
    modified[index] = modified[index].copyWith(
      questions: [...newQuestionList],
    );

    state = state.copyWith(questions: modified);
  }

  void checkQuestionListTextAt(Question question, QuestionLine e, bool? value) {
    final index = state.questions.indexWhere((e) => e.id == question.id);

    final modified = [...state.questions];
    final questionList = modified[index].questions;
    var itemIdx = questionList.indexWhere((element) => element.id == e.id);
    if (itemIdx < 0) return;

    var newItem = questionList[itemIdx].copyWith(checked: value ?? false);
    var newQuestionList = [
      ...questionList.slice(0, itemIdx),
      newItem,
      ...questionList.slice(itemIdx + 1)
    ];

    // questionList.replaceRange(start, end, replacements)
    modified[index] = modified[index].copyWith(
      questions: [...newQuestionList],
    );

    state = state.copyWith(questions: modified);
  }

  void changeQuestionListLongAnswerTextAt(
      Question question, QuestionLine e, String value) {
    final index = state.questions.indexWhere((e) => e.id == question.id);

    final modified = [...state.questions];
    final questionList = modified[index].questions;
    var itemIdx = questionList.indexWhere((element) => element.id == e.id);
    if (itemIdx < 0) return;

    var newItem = questionList[itemIdx].copyWith(longAnswer: value);
    var newQuestionList = [
      ...questionList.slice(0, itemIdx),
      newItem,
      ...questionList.slice(itemIdx + 1)
    ];

    // questionList.replaceRange(start, end, replacements)
    modified[index] = modified[index].copyWith(
      questions: [...newQuestionList],
    );

    state = state.copyWith(questions: modified);
  }

  void markQuestionListEditable(
      Question question, QuestionLine e, bool editable) {
    final index = state.questions.indexWhere((e) => e.id == question.id);
    final modified = [...state.questions];
    final questionList = modified[index].questions;
    var itemIdx = questionList.indexWhere((element) => element.id == e.id);
    if (itemIdx < 0) return;

    var newItem = questionList[itemIdx].copyWith(editable: editable);
    var newQuestionList = [
      ...questionList.slice(0, itemIdx),
      newItem,
      ...questionList.slice(itemIdx + 1)
    ];

    // questionList.replaceRange(start, end, replacements)
    modified[index] = modified[index].copyWith(
      questions: [...newQuestionList],
    );

    state = state.copyWith(questions: modified);
  }

  void cloneQuestion(Question question) {
    final index = state.questions.indexWhere((e) => e.id == question.id);
    final cloneData = state.questions[index].copyWith(
      id: const Uuid().v4(),
    );
    final modified = [
      ...state.questions,
      cloneData,
    ];
    state = state.copyWith(questions: modified);
  }

  void removeQuestion(Question question) {
    final modified = [
      ...state.questions.where((element) => element.id != question.id)
    ];
    state = state.copyWith(questions: modified);
  }

  void changeQuestionParagraph(Question question, String value) {
    final index = state.questions.indexWhere((e) => e.id == question.id);

    final modified = [...state.questions];
    modified[index] = modified[index].copyWith(longQuestion: value);

    state = state.copyWith(questions: modified);
  }

  void changeStatus(FormStatus status) {
    state = state.copyWith(status: status);
  }
}
