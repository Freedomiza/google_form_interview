import 'package:avnon_pre_interview/contracts/groupeddata.dart';
import 'package:avnon_pre_interview/contracts/question_line.dart';
import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:avnon_pre_interview/contracts/user_form.dart';

part 'response_provider.g.dart';

@riverpod
class ResponseFormList extends _$ResponseFormList {
  @override
  GroupedData build() {
    return GroupedData(questions: [], userResponses: []);
  }

  void submit(UserForm form) {
    state = state.copyWith(userResponses: [...state.userResponses, form]);

    if (state.questions.isEmpty) {
      state = state.copyWith(questions: [
        ...form.questions.map((e) {
          return e.copyWith(
              questions: e.questions
                  .map((eq) => eq.copyWith(count: eq.checked ? 1 : 0))
                  .toList());
        })
      ]);
      return;
    }

    final responses = form.questions;

    for (var element in responses) {
      final foundIndex = state.questions.indexWhere((e) => e.id == element.id);

      if (foundIndex >= 0) {
        final found = state.questions[foundIndex];

        final userCheckedAnswers =
            element.questions.where((element) => element.checked);
        List<QuestionLine> newPolls = [];
        for (var poll in found.questions) {
          if (userCheckedAnswers.any((aw) => aw.id == poll.id)) {
            newPolls.add(poll.copyWith(count: poll.count + 1));
          } else {
            newPolls.add(poll.copyWith());
          }
        }

        final updatedFound = found.copyWith(questions: newPolls);

        var newQuestionList = [
          ...state.questions.slice(0, foundIndex),
          updatedFound,
          ...state.questions.slice(foundIndex + 1)
        ];

        state = state.copyWith(questions: newQuestionList);
      }
    }
  }
}
