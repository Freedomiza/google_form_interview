// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionLineImpl _$$QuestionLineImplFromJson(Map<String, dynamic> json) =>
    _$QuestionLineImpl(
      id: json['id'] as String?,
      question: json['question'] as String?,
      answer: json['answer'] as String?,
      longAnswer: json['longAnswer'] as String?,
      editable: json['editable'] as bool? ?? false,
      checked: json['checked'] as bool? ?? false,
      isOther: json['isOther'] as bool? ?? false,
      type: $enumDecodeNullable(_$QuestionTypeEnumMap, json['type']) ??
          QuestionType.multiple,
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$QuestionLineImplToJson(_$QuestionLineImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answer': instance.answer,
      'longAnswer': instance.longAnswer,
      'editable': instance.editable,
      'checked': instance.checked,
      'isOther': instance.isOther,
      'type': _$QuestionTypeEnumMap[instance.type]!,
      'options': instance.options,
    };

const _$QuestionTypeEnumMap = {
  QuestionType.multiple: 'multiple',
  QuestionType.paragraph: 'paragraph',
};
