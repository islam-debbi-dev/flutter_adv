// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sgin_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() SignupLoading,
    required TResult Function(T data) SignupSuccess,
    required TResult Function(String message) SignupError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? SignupLoading,
    TResult? Function(T data)? SignupSuccess,
    TResult? Function(String message)? SignupError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? SignupLoading,
    TResult Function(T data)? SignupSuccess,
    TResult Function(String message)? SignupError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignUpLoading<T> value) SignupLoading,
    required TResult Function(SignUpSuccess<T> value) SignupSuccess,
    required TResult Function(SignUpFailure<T> value) SignupError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignUpLoading<T> value)? SignupLoading,
    TResult? Function(SignUpSuccess<T> value)? SignupSuccess,
    TResult? Function(SignUpFailure<T> value)? SignupError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignUpLoading<T> value)? SignupLoading,
    TResult Function(SignUpSuccess<T> value)? SignupSuccess,
    TResult Function(SignUpFailure<T> value)? SignupError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<T, $Res> {
  factory $SignUpStateCopyWith(
          SignUpState<T> value, $Res Function(SignUpState<T>) then) =
      _$SignUpStateCopyWithImpl<T, $Res, SignUpState<T>>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<T, $Res, $Val extends SignUpState<T>>
    implements $SignUpStateCopyWith<T, $Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$SignUpStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SignUpState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() SignupLoading,
    required TResult Function(T data) SignupSuccess,
    required TResult Function(String message) SignupError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? SignupLoading,
    TResult? Function(T data)? SignupSuccess,
    TResult? Function(String message)? SignupError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? SignupLoading,
    TResult Function(T data)? SignupSuccess,
    TResult Function(String message)? SignupError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignUpLoading<T> value) SignupLoading,
    required TResult Function(SignUpSuccess<T> value) SignupSuccess,
    required TResult Function(SignUpFailure<T> value) SignupError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignUpLoading<T> value)? SignupLoading,
    TResult? Function(SignUpSuccess<T> value)? SignupSuccess,
    TResult? Function(SignUpFailure<T> value)? SignupError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignUpLoading<T> value)? SignupLoading,
    TResult Function(SignUpSuccess<T> value)? SignupSuccess,
    TResult Function(SignUpFailure<T> value)? SignupError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements SignUpState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$SignUpLoadingImplCopyWith<T, $Res> {
  factory _$$SignUpLoadingImplCopyWith(_$SignUpLoadingImpl<T> value,
          $Res Function(_$SignUpLoadingImpl<T>) then) =
      __$$SignUpLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SignUpLoadingImplCopyWithImpl<T, $Res>
    extends _$SignUpStateCopyWithImpl<T, $Res, _$SignUpLoadingImpl<T>>
    implements _$$SignUpLoadingImplCopyWith<T, $Res> {
  __$$SignUpLoadingImplCopyWithImpl(_$SignUpLoadingImpl<T> _value,
      $Res Function(_$SignUpLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpLoadingImpl<T> implements SignUpLoading<T> {
  const _$SignUpLoadingImpl();

  @override
  String toString() {
    return 'SignUpState<$T>.SignupLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() SignupLoading,
    required TResult Function(T data) SignupSuccess,
    required TResult Function(String message) SignupError,
  }) {
    return SignupLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? SignupLoading,
    TResult? Function(T data)? SignupSuccess,
    TResult? Function(String message)? SignupError,
  }) {
    return SignupLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? SignupLoading,
    TResult Function(T data)? SignupSuccess,
    TResult Function(String message)? SignupError,
    required TResult orElse(),
  }) {
    if (SignupLoading != null) {
      return SignupLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignUpLoading<T> value) SignupLoading,
    required TResult Function(SignUpSuccess<T> value) SignupSuccess,
    required TResult Function(SignUpFailure<T> value) SignupError,
  }) {
    return SignupLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignUpLoading<T> value)? SignupLoading,
    TResult? Function(SignUpSuccess<T> value)? SignupSuccess,
    TResult? Function(SignUpFailure<T> value)? SignupError,
  }) {
    return SignupLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignUpLoading<T> value)? SignupLoading,
    TResult Function(SignUpSuccess<T> value)? SignupSuccess,
    TResult Function(SignUpFailure<T> value)? SignupError,
    required TResult orElse(),
  }) {
    if (SignupLoading != null) {
      return SignupLoading(this);
    }
    return orElse();
  }
}

abstract class SignUpLoading<T> implements SignUpState<T> {
  const factory SignUpLoading() = _$SignUpLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SignUpSuccessImplCopyWith<T, $Res> {
  factory _$$SignUpSuccessImplCopyWith(_$SignUpSuccessImpl<T> value,
          $Res Function(_$SignUpSuccessImpl<T>) then) =
      __$$SignUpSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SignUpSuccessImplCopyWithImpl<T, $Res>
    extends _$SignUpStateCopyWithImpl<T, $Res, _$SignUpSuccessImpl<T>>
    implements _$$SignUpSuccessImplCopyWith<T, $Res> {
  __$$SignUpSuccessImplCopyWithImpl(_$SignUpSuccessImpl<T> _value,
      $Res Function(_$SignUpSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SignUpSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SignUpSuccessImpl<T> implements SignUpSuccess<T> {
  const _$SignUpSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'SignUpState<$T>.SignupSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpSuccessImplCopyWith<T, _$SignUpSuccessImpl<T>> get copyWith =>
      __$$SignUpSuccessImplCopyWithImpl<T, _$SignUpSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() SignupLoading,
    required TResult Function(T data) SignupSuccess,
    required TResult Function(String message) SignupError,
  }) {
    return SignupSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? SignupLoading,
    TResult? Function(T data)? SignupSuccess,
    TResult? Function(String message)? SignupError,
  }) {
    return SignupSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? SignupLoading,
    TResult Function(T data)? SignupSuccess,
    TResult Function(String message)? SignupError,
    required TResult orElse(),
  }) {
    if (SignupSuccess != null) {
      return SignupSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignUpLoading<T> value) SignupLoading,
    required TResult Function(SignUpSuccess<T> value) SignupSuccess,
    required TResult Function(SignUpFailure<T> value) SignupError,
  }) {
    return SignupSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignUpLoading<T> value)? SignupLoading,
    TResult? Function(SignUpSuccess<T> value)? SignupSuccess,
    TResult? Function(SignUpFailure<T> value)? SignupError,
  }) {
    return SignupSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignUpLoading<T> value)? SignupLoading,
    TResult Function(SignUpSuccess<T> value)? SignupSuccess,
    TResult Function(SignUpFailure<T> value)? SignupError,
    required TResult orElse(),
  }) {
    if (SignupSuccess != null) {
      return SignupSuccess(this);
    }
    return orElse();
  }
}

abstract class SignUpSuccess<T> implements SignUpState<T> {
  const factory SignUpSuccess(final T data) = _$SignUpSuccessImpl<T>;

  T get data;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpSuccessImplCopyWith<T, _$SignUpSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpFailureImplCopyWith<T, $Res> {
  factory _$$SignUpFailureImplCopyWith(_$SignUpFailureImpl<T> value,
          $Res Function(_$SignUpFailureImpl<T>) then) =
      __$$SignUpFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SignUpFailureImplCopyWithImpl<T, $Res>
    extends _$SignUpStateCopyWithImpl<T, $Res, _$SignUpFailureImpl<T>>
    implements _$$SignUpFailureImplCopyWith<T, $Res> {
  __$$SignUpFailureImplCopyWithImpl(_$SignUpFailureImpl<T> _value,
      $Res Function(_$SignUpFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SignUpFailureImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpFailureImpl<T> implements SignUpFailure<T> {
  const _$SignUpFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SignUpState<$T>.SignupError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpFailureImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpFailureImplCopyWith<T, _$SignUpFailureImpl<T>> get copyWith =>
      __$$SignUpFailureImplCopyWithImpl<T, _$SignUpFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() SignupLoading,
    required TResult Function(T data) SignupSuccess,
    required TResult Function(String message) SignupError,
  }) {
    return SignupError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? SignupLoading,
    TResult? Function(T data)? SignupSuccess,
    TResult? Function(String message)? SignupError,
  }) {
    return SignupError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? SignupLoading,
    TResult Function(T data)? SignupSuccess,
    TResult Function(String message)? SignupError,
    required TResult orElse(),
  }) {
    if (SignupError != null) {
      return SignupError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignUpLoading<T> value) SignupLoading,
    required TResult Function(SignUpSuccess<T> value) SignupSuccess,
    required TResult Function(SignUpFailure<T> value) SignupError,
  }) {
    return SignupError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignUpLoading<T> value)? SignupLoading,
    TResult? Function(SignUpSuccess<T> value)? SignupSuccess,
    TResult? Function(SignUpFailure<T> value)? SignupError,
  }) {
    return SignupError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignUpLoading<T> value)? SignupLoading,
    TResult Function(SignUpSuccess<T> value)? SignupSuccess,
    TResult Function(SignUpFailure<T> value)? SignupError,
    required TResult orElse(),
  }) {
    if (SignupError != null) {
      return SignupError(this);
    }
    return orElse();
  }
}

abstract class SignUpFailure<T> implements SignUpState<T> {
  const factory SignUpFailure({required final String message}) =
      _$SignUpFailureImpl<T>;

  String get message;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpFailureImplCopyWith<T, _$SignUpFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
