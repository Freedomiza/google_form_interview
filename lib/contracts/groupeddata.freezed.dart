// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'groupeddata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupedData _$GroupedDataFromJson(Map<String, dynamic> json) {
  return _GroupedData.fromJson(json);
}

/// @nodoc
mixin _$GroupedData {
  List<UserForm> get userResponses => throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupedDataCopyWith<GroupedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupedDataCopyWith<$Res> {
  factory $GroupedDataCopyWith(
          GroupedData value, $Res Function(GroupedData) then) =
      _$GroupedDataCopyWithImpl<$Res, GroupedData>;
  @useResult
  $Res call({List<UserForm> userResponses, List<Question> questions});
}

/// @nodoc
class _$GroupedDataCopyWithImpl<$Res, $Val extends GroupedData>
    implements $GroupedDataCopyWith<$Res> {
  _$GroupedDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userResponses = null,
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      userResponses: null == userResponses
          ? _value.userResponses
          : userResponses // ignore: cast_nullable_to_non_nullable
              as List<UserForm>,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupedDataImplCopyWith<$Res>
    implements $GroupedDataCopyWith<$Res> {
  factory _$$GroupedDataImplCopyWith(
          _$GroupedDataImpl value, $Res Function(_$GroupedDataImpl) then) =
      __$$GroupedDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserForm> userResponses, List<Question> questions});
}

/// @nodoc
class __$$GroupedDataImplCopyWithImpl<$Res>
    extends _$GroupedDataCopyWithImpl<$Res, _$GroupedDataImpl>
    implements _$$GroupedDataImplCopyWith<$Res> {
  __$$GroupedDataImplCopyWithImpl(
      _$GroupedDataImpl _value, $Res Function(_$GroupedDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userResponses = null,
    Object? questions = null,
  }) {
    return _then(_$GroupedDataImpl(
      userResponses: null == userResponses
          ? _value._userResponses
          : userResponses // ignore: cast_nullable_to_non_nullable
              as List<UserForm>,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupedDataImpl implements _GroupedData {
  _$GroupedDataImpl(
      {final List<UserForm> userResponses = const [],
      final List<Question> questions = const []})
      : _userResponses = userResponses,
        _questions = questions;

  factory _$GroupedDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupedDataImplFromJson(json);

  final List<UserForm> _userResponses;
  @override
  @JsonKey()
  List<UserForm> get userResponses {
    if (_userResponses is EqualUnmodifiableListView) return _userResponses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userResponses);
  }

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
    return 'GroupedData(userResponses: $userResponses, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupedDataImpl &&
            const DeepCollectionEquality()
                .equals(other._userResponses, _userResponses) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_userResponses),
      const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupedDataImplCopyWith<_$GroupedDataImpl> get copyWith =>
      __$$GroupedDataImplCopyWithImpl<_$GroupedDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupedDataImplToJson(
      this,
    );
  }
}

abstract class _GroupedData implements GroupedData {
  factory _GroupedData(
      {final List<UserForm> userResponses,
      final List<Question> questions}) = _$GroupedDataImpl;

  factory _GroupedData.fromJson(Map<String, dynamic> json) =
      _$GroupedDataImpl.fromJson;

  @override
  List<UserForm> get userResponses;
  @override
  List<Question> get questions;
  @override
  @JsonKey(ignore: true)
  _$$GroupedDataImplCopyWith<_$GroupedDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
