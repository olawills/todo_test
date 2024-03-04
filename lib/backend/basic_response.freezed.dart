// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasicResponse<T> _$BasicResponseFromJson<T>(Map<String, dynamic> json) {
  return _BasicResponse<T>.fromJson(json);
}

/// @nodoc
mixin _$BasicResponse<T> {
// @Default(0) int statusCode,
  @JsonKey(fromJson: getBool)
  bool? get success =>
      throw _privateConstructorUsedError; // @JsonKey(fromJson: getString) String? message,
  @JsonKey(fromJson: getString)
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasicResponseCopyWith<T, BasicResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicResponseCopyWith<T, $Res> {
  factory $BasicResponseCopyWith(
          BasicResponse<T> value, $Res Function(BasicResponse<T>) then) =
      _$BasicResponseCopyWithImpl<T, $Res, BasicResponse<T>>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: getBool) bool? success,
      @JsonKey(fromJson: getString) String? token});
}

/// @nodoc
class _$BasicResponseCopyWithImpl<T, $Res, $Val extends BasicResponse<T>>
    implements $BasicResponseCopyWith<T, $Res> {
  _$BasicResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasicResponseImplCopyWith<T, $Res>
    implements $BasicResponseCopyWith<T, $Res> {
  factory _$$BasicResponseImplCopyWith(_$BasicResponseImpl<T> value,
          $Res Function(_$BasicResponseImpl<T>) then) =
      __$$BasicResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: getBool) bool? success,
      @JsonKey(fromJson: getString) String? token});
}

/// @nodoc
class __$$BasicResponseImplCopyWithImpl<T, $Res>
    extends _$BasicResponseCopyWithImpl<T, $Res, _$BasicResponseImpl<T>>
    implements _$$BasicResponseImplCopyWith<T, $Res> {
  __$$BasicResponseImplCopyWithImpl(_$BasicResponseImpl<T> _value,
      $Res Function(_$BasicResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? token = freezed,
  }) {
    return _then(_$BasicResponseImpl<T>(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasicResponseImpl<T> implements _BasicResponse<T> {
  _$BasicResponseImpl(
      {@JsonKey(fromJson: getBool) this.success,
      @JsonKey(fromJson: getString) this.token});

  factory _$BasicResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasicResponseImplFromJson(json);

// @Default(0) int statusCode,
  @override
  @JsonKey(fromJson: getBool)
  final bool? success;
// @JsonKey(fromJson: getString) String? message,
  @override
  @JsonKey(fromJson: getString)
  final String? token;

  @override
  String toString() {
    return 'BasicResponse<$T>(success: $success, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasicResponseImpl<T> &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasicResponseImplCopyWith<T, _$BasicResponseImpl<T>> get copyWith =>
      __$$BasicResponseImplCopyWithImpl<T, _$BasicResponseImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasicResponseImplToJson<T>(
      this,
    );
  }
}

abstract class _BasicResponse<T> implements BasicResponse<T> {
  factory _BasicResponse(
          {@JsonKey(fromJson: getBool) final bool? success,
          @JsonKey(fromJson: getString) final String? token}) =
      _$BasicResponseImpl<T>;

  factory _BasicResponse.fromJson(Map<String, dynamic> json) =
      _$BasicResponseImpl<T>.fromJson;


  @override // @JsonKey(fromJson: getString) String? message,
  @JsonKey(fromJson: getString)
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$BasicResponseImplCopyWith<T, _$BasicResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
