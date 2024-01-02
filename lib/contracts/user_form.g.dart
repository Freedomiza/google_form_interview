// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserFormImpl _$$UserFormImplFromJson(Map<String, dynamic> json) =>
    _$UserFormImpl(
      title: json['title'] as String? ?? 'Untitled form',
      description: json['description'] as String?,
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserFormImplToJson(_$UserFormImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'questions': instance.questions,
    };
