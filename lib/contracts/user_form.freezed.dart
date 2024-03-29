// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserForm _$UserFormFromJson(Map<String, dynamic> json) {
  return _UserForm.fromJson(json);
}

/// @nodoc
mixin _$UserForm {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  FormStatus get status => throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFormCopyWith<UserForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormCopyWith<$Res> {
  factory $UserFormCopyWith(UserForm value, $Res Function(UserForm) then) =
      _$UserFormCopyWithImpl<$Res, UserForm>;
  @useResult
  $Res call(
      {String id,
      String title,
      String? description,
      FormStatus status,
      List<Question> questions});
}

/// @nodoc
class _$UserFormCopyWithImpl<$Res, $Val extends UserForm>
    implements $UserFormCopyWith<$Res> {
  _$UserFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? status = null,
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserFormImplCopyWith<$Res>
    implements $UserFormCopyWith<$Res> {
  factory _$$UserFormImplCopyWith(
          _$UserFormImpl value, $Res Function(_$UserFormImpl) then) =
      __$$UserFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String? description,
      FormStatus status,
      List<Question> questions});
}

/// @nodoc
class __$$UserFormImplCopyWithImpl<$Res>
    extends _$UserFormCopyWithImpl<$Res, _$UserFormImpl>
    implements _$$UserFormImplCopyWith<$Res> {
  __$$UserFormImplCopyWithImpl(
      _$UserFormImpl _value, $Res Function(_$UserFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? status = null,
    Object? questions = null,
  }) {
    return _then(_$UserFormImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserFormImpl implements _UserForm {
  _$UserFormImpl(
      {this.id = '',
      this.title = 'Untitled form',
      this.description,
      this.status = FormStatus.init,
      final List<Question> questions = const []})
      : _questions = questions;

  factory _$UserFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserFormImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String title;
  @override
  final String? description;
  @override
  @JsonKey()
  final FormStatus status;
  final List<Question> _questions;
  @override
  @JsonKey()
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'UserForm(id: $id, title: $title, description: $description, status: $status, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFormImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, status,
      const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFormImplCopyWith<_$UserFormImpl> get copyWith =>
      __$$UserFormImplCopyWithImpl<_$UserFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserFormImplToJson(
      this,
    );
  }
}

abstract class _UserForm implements UserForm {
  factory _UserForm(
      {final String id,
      final String title,
      final String? description,
      final FormStatus status,
      final List<Question> questions}) = _$UserFormImpl;

  factory _UserForm.fromJson(Map<String, dynamic> json) =
      _$UserFormImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  FormStatus get status;
  @override
  List<Question> get questions;
  @override
  @JsonKey(ignore: true)
  _$$UserFormImplCopyWith<_$UserFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
