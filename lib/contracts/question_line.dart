import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_line.freezed.dart';
part 'question_line.g.dart';

enum QuestionType {
  multiple,
  paragraph;

  static List<QuestionType> get items =>
      [QuestionType.multiple, QuestionType.paragraph];
  String get name {
    switch (this) {
      case multiple:
        return 'Multiple choice';
      default:
        return "Paragraph";
    }
  }

  static QuestionType parse(String? style) {
    switch (style?.toLowerCase()) {
      case 'multiple choice':
        return QuestionType.multiple;
      default:
        return QuestionType.paragraph;
    }
  }
}

// ignore: must_be_immutable

@freezed
class QuestionLine with _$QuestionLine {
  factory QuestionLine({
    String? question,
    String? answer,
    String? longAnswer,
    @Default(QuestionType.multiple) QuestionType type,
    @Default([]) List<String> options,
  }) = _QuestionLine;

  factory QuestionLine.fromJson(Map<String, dynamic> json) =>
      _$QuestionLineFromJson(json);
}
