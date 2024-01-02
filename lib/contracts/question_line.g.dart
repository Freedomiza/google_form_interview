// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionLineImpl _$$QuestionLineImplFromJson(Map<String, dynamic> json) =>
    _$QuestionLineImpl(
      question: json['question'] as String?,
      answer: json['answer'] as String?,
      longAnswer: json['longAnswer'] as String?,
      type: $enumDecodeNullable(_$QuestionTypeEnumMap, json['type']) ??
          QuestionType.multiple,
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$QuestionLineImplToJson(_$QuestionLineImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
      'longAnswer': instance.longAnswer,
      'type': _$QuestionTypeEnumMap[instance.type]!,
      'options': instance.options,
    };

const _$QuestionTypeEnumMap = {
  QuestionType.multiple: 'multiple',
  QuestionType.paragraph: 'paragraph',
};
