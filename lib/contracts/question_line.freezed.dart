// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionLine _$QuestionLineFromJson(Map<String, dynamic> json) {
  return _QuestionLine.fromJson(json);
}

/// @nodoc
mixin _$QuestionLine {
  String? get id => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;
  String? get longAnswer => throw _privateConstructorUsedError;
  bool get editable => throw _privateConstructorUsedError;
  bool get checked => throw _privateConstructorUsedError;
  bool get isOther => throw _privateConstructorUsedError;
  QuestionType get type => throw _privateConstructorUsedError;
  List<String> get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionLineCopyWith<QuestionLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionLineCopyWith<$Res> {
  factory $QuestionLineCopyWith(
          QuestionLine value, $Res Function(QuestionLine) then) =
      _$QuestionLineCopyWithImpl<$Res, QuestionLine>;
  @useResult
  $Res call(
      {String? id,
      String? question,
      String? answer,
      String? longAnswer,
      bool editable,
      bool checked,
      bool isOther,
      QuestionType type,
      List<String> options});
}

/// @nodoc
class _$QuestionLineCopyWithImpl<$Res, $Val extends QuestionLine>
    implements $QuestionLineCopyWith<$Res> {
  _$QuestionLineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? answer = freezed,
    Object? longAnswer = freezed,
    Object? editable = null,
    Object? checked = null,
    Object? isOther = null,
    Object? type = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      longAnswer: freezed == longAnswer
          ? _value.longAnswer
          : longAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      editable: null == editable
          ? _value.editable
          : editable // ignore: cast_nullable_to_non_nullable
              as bool,
      checked: null == checked
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool,
      isOther: null == isOther
          ? _value.isOther
          : isOther // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionLineImplCopyWith<$Res>
    implements $QuestionLineCopyWith<$Res> {
  factory _$$QuestionLineImplCopyWith(
          _$QuestionLineImpl value, $Res Function(_$QuestionLineImpl) then) =
      __$$QuestionLineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? question,
      String? answer,
      String? longAnswer,
      bool editable,
      bool checked,
      bool isOther,
      QuestionType type,
      List<String> options});
}

/// @nodoc
class __$$QuestionLineImplCopyWithImpl<$Res>
    extends _$QuestionLineCopyWithImpl<$Res, _$QuestionLineImpl>
    implements _$$QuestionLineImplCopyWith<$Res> {
  __$$QuestionLineImplCopyWithImpl(
      _$QuestionLineImpl _value, $Res Function(_$QuestionLineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? answer = freezed,
    Object? longAnswer = freezed,
    Object? editable = null,
    Object? checked = null,
    Object? isOther = null,
    Object? type = null,
    Object? options = null,
  }) {
    return _then(_$QuestionLineImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      longAnswer: freezed == longAnswer
          ? _value.longAnswer
          : longAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      editable: null == editable
          ? _value.editable
          : editable // ignore: cast_nullable_to_non_nullable
              as bool,
      checked: null == checked
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool,
      isOther: null == isOther
          ? _value.isOther
          : isOther // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionLineImpl implements _QuestionLine {
  _$QuestionLineImpl(
      {this.id,
      this.question,
      this.answer,
      this.longAnswer,
      this.editable = false,
      this.checked = false,
      this.isOther = false,
      this.type = QuestionType.multiple,
      final List<String> options = const []})
      : _options = options;

  factory _$QuestionLineImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionLineImplFromJson(json);

  @override
  final String? id;
  @override
  final String? question;
  @override
  final String? answer;
  @override
  final String? longAnswer;
  @override
  @JsonKey()
  final bool editable;
  @override
  @JsonKey()
  final bool checked;
  @override
  @JsonKey()
  final bool isOther;
  @override
  @JsonKey()
  final QuestionType type;
  final List<String> _options;
  @override
  @JsonKey()
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'QuestionLine(id: $id, question: $question, answer: $answer, longAnswer: $longAnswer, editable: $editable, checked: $checked, isOther: $isOther, type: $type, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionLineImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.longAnswer, longAnswer) ||
                other.longAnswer == longAnswer) &&
            (identical(other.editable, editable) ||
                other.editable == editable) &&
            (identical(other.checked, checked) || other.checked == checked) &&
            (identical(other.isOther, isOther) || other.isOther == isOther) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      question,
      answer,
      longAnswer,
      editable,
      checked,
      isOther,
      type,
      const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionLineImplCopyWith<_$QuestionLineImpl> get copyWith =>
      __$$QuestionLineImplCopyWithImpl<_$QuestionLineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionLineImplToJson(
      this,
    );
  }
}

abstract class _QuestionLine implements QuestionLine {
  factory _QuestionLine(
      {final String? id,
      final String? question,
      final String? answer,
      final String? longAnswer,
      final bool editable,
      final bool checked,
      final bool isOther,
      final QuestionType type,
      final List<String> options}) = _$QuestionLineImpl;

  factory _QuestionLine.fromJson(Map<String, dynamic> json) =
      _$QuestionLineImpl.fromJson;

  @override
  String? get id;
  @override
  String? get question;
  @override
  String? get answer;
  @override
  String? get longAnswer;
  @override
  bool get editable;
  @override
  bool get checked;
  @override
  bool get isOther;
  @override
  QuestionType get type;
  @override
  List<String> get options;
  @override
  @JsonKey(ignore: true)
  _$$QuestionLineImplCopyWith<_$QuestionLineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
