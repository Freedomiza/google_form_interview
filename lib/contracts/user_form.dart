import 'package:freezed_annotation/freezed_annotation.dart';

import 'question.dart';

part 'user_form.freezed.dart';
part 'user_form.g.dart';

@freezed
class UserForm with _$UserForm {
  factory UserForm({
    @Default('') String id,
    @Default('Untitled form') String title,
    String? description,
    @Default(FormStatus.init) FormStatus status,
    @Default([]) List<Question> questions,
  }) = _UserForm;

  factory UserForm.fromJson(Map<String, dynamic> json) =>
      _$UserFormFromJson(json);
}

enum FormStatus { init, review, submitted }
