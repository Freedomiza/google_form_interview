import 'package:avnon_pre_interview/contracts/question.dart';
import 'package:avnon_pre_interview/contracts/question_line.dart';
import 'package:avnon_pre_interview/contracts/user_form.dart';
import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
    final index = state.questions.indexOf(question);

    final modified = [...state.questions];
    modified[index] = modified[index].copyWith(type: type);

    state = state.copyWith(questions: modified);
  }

  void changeQuestionTitle(Question question, String title) {
    final index = state.questions.indexOf(question);

    final modified = [...state.questions];
    modified[index] = modified[index].copyWith(title: title);

    state = state.copyWith(questions: modified);
  }

  void addMoreQuestionList(
    Question question,
  ) {
    final index = state.questions.indexOf(question);

    final modified = [...state.questions];
    final len = modified[index].questions.length + 1;
    modified[index] = modified[index].copyWith(questions: [
      ...modified[index].questions,
      QuestionLine(
        question: 'Option $len',
      )
    ]);
    state = state.copyWith(questions: modified);
  }

  void addOtherQuestionList(Question question) {}

  void removeQuestionList(Question question, QuestionLine e) {
    final index = state.questions.indexOf(question);

    final modified = [...state.questions];
    modified[index] = modified[index].copyWith(
      questions: [
        ...modified[index].questions.where((element) => element != e).toList()
      ],
    );
    state = state.copyWith(questions: modified);
  }
}
