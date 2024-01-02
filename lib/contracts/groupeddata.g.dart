// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groupeddata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupedDataImpl _$$GroupedDataImplFromJson(Map<String, dynamic> json) =>
    _$GroupedDataImpl(
      userResponses: (json['userResponses'] as List<dynamic>?)
              ?.map((e) => UserForm.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GroupedDataImplToJson(_$GroupedDataImpl instance) =>
    <String, dynamic>{
      'userResponses': instance.userResponses,
      'questions': instance.questions,
    };
