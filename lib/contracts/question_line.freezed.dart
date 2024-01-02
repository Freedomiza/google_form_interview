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
  bool get editable => throw _privateConstructorUsedError;
  bool get checked => throw _privateConstructorUsedError;
  bool get isOther => throw _privateConstructorUsedError;
  List<String> get others => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

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
      bool editable,
      bool checked,
      bool isOther,
      List<String> others,
      int count});
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
    Object? editable = null,
    Object? checked = null,
    Object? isOther = null,
    Object? others = null,
    Object? count = null,
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
      others: null == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as List<String>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
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
      bool editable,
      bool checked,
      bool isOther,
      List<String> others,
      int count});
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
    Object? editable = null,
    Object? checked = null,
    Object? isOther = null,
    Object? others = null,
    Object? count = null,
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
      others: null == others
          ? _value._others
          : others // ignore: cast_nullable_to_non_nullable
              as List<String>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionLineImpl implements _QuestionLine {
  _$QuestionLineImpl(
      {this.id,
      this.question,
      this.editable = false,
      this.checked = false,
      this.isOther = false,
      final List<String> others = const [],
      this.count = 0})
      : _others = others;

  factory _$QuestionLineImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionLineImplFromJson(json);

  @override
  final String? id;
  @override
  final String? question;
  @override
  @JsonKey()
  final bool editable;
  @override
  @JsonKey()
  final bool checked;
  @override
  @JsonKey()
  final bool isOther;
  final List<String> _others;
  @override
  @JsonKey()
  List<String> get others {
    if (_others is EqualUnmodifiableListView) return _others;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_others);
  }

  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'QuestionLine(id: $id, question: $question, editable: $editable, checked: $checked, isOther: $isOther, others: $others, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionLineImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.editable, editable) ||
                other.editable == editable) &&
            (identical(other.checked, checked) || other.checked == checked) &&
            (identical(other.isOther, isOther) || other.isOther == isOther) &&
            const DeepCollectionEquality().equals(other._others, _others) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, question, editable, checked,
      isOther, const DeepCollectionEquality().hash(_others), count);

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
      final bool editable,
      final bool checked,
      final bool isOther,
      final List<String> others,
      final int count}) = _$QuestionLineImpl;

  factory _QuestionLine.fromJson(Map<String, dynamic> json) =
      _$QuestionLineImpl.fromJson;

  @override
  String? get id;
  @override
  String? get question;
  @override
  bool get editable;
  @override
  bool get checked;
  @override
  bool get isOther;
  @override
  List<String> get others;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$QuestionLineImplCopyWith<_$QuestionLineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
