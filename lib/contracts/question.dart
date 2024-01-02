import 'package:freezed_annotation/freezed_annotation.dart';
import 'question_line.dart';
part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  factory Question({
    @Default('') String id,
    @Default('') String title,
    @Default([]) List<QuestionLine> questions,
    @Default(QuestionType.multiple) QuestionType type,
    String? description,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
