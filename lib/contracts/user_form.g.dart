// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserFormImpl _$$UserFormImplFromJson(Map<String, dynamic> json) =>
    _$UserFormImpl(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? 'Untitled form',
      description: json['description'] as String?,
      status: json['status'] ?? FormStatus.init,
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserFormImplToJson(_$UserFormImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'questions': instance.questions,
    };
