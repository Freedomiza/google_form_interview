// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionLineImpl _$$QuestionLineImplFromJson(Map<String, dynamic> json) =>
    _$QuestionLineImpl(
      id: json['id'] as String?,
      question: json['question'] as String?,
      editable: json['editable'] as bool? ?? false,
      checked: json['checked'] as bool? ?? false,
      isOther: json['isOther'] as bool? ?? false,
      others: (json['others'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      count: json['count'] as int? ?? 0,
    );

Map<String, dynamic> _$$QuestionLineImplToJson(_$QuestionLineImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'editable': instance.editable,
      'checked': instance.checked,
      'isOther': instance.isOther,
      'others': instance.others,
      'count': instance.count,
    };
