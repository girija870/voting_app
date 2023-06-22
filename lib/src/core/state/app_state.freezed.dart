// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(String message) error,
    required TResult Function(T data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(String message)? error,
    TResult? Function(T data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(String message)? error,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateInitial<T> value) initial,
    required TResult Function(AppStateLoading<T> value) loading,
    required TResult Function(AppStateInternet<T> value) noInternet,
    required TResult Function(AppStateError<T> value) error,
    required TResult Function(AppStateSuccess<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateInitial<T> value)? initial,
    TResult? Function(AppStateLoading<T> value)? loading,
    TResult? Function(AppStateInternet<T> value)? noInternet,
    TResult? Function(AppStateError<T> value)? error,
    TResult? Function(AppStateSuccess<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateInitial<T> value)? initial,
    TResult Function(AppStateLoading<T> value)? loading,
    TResult Function(AppStateInternet<T> value)? noInternet,
    TResult Function(AppStateError<T> value)? error,
    TResult Function(AppStateSuccess<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<T, $Res> {
  factory $AppStateCopyWith(
          AppState<T> value, $Res Function(AppState<T>) then) =
      _$AppStateCopyWithImpl<T, $Res, AppState<T>>;
}

/// @nodoc
class _$AppStateCopyWithImpl<T, $Res, $Val extends AppState<T>>
    implements $AppStateCopyWith<T, $Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppStateInitialCopyWith<T, $Res> {
  factory _$$AppStateInitialCopyWith(_$AppStateInitial<T> value,
          $Res Function(_$AppStateInitial<T>) then) =
      __$$AppStateInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AppStateInitialCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res, _$AppStateInitial<T>>
    implements _$$AppStateInitialCopyWith<T, $Res> {
  __$$AppStateInitialCopyWithImpl(
      _$AppStateInitial<T> _value, $Res Function(_$AppStateInitial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppStateInitial<T> implements AppStateInitial<T> {
  const _$AppStateInitial();

  @override
  String toString() {
    return 'AppState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStateInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(String message) error,
    required TResult Function(T data) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(String message)? error,
    TResult? Function(T data)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(String message)? error,
    TResult Function(T data)? success,
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
    required TResult Function(AppStateInitial<T> value) initial,
    required TResult Function(AppStateLoading<T> value) loading,
    required TResult Function(AppStateInternet<T> value) noInternet,
    required TResult Function(AppStateError<T> value) error,
    required TResult Function(AppStateSuccess<T> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateInitial<T> value)? initial,
    TResult? Function(AppStateLoading<T> value)? loading,
    TResult? Function(AppStateInternet<T> value)? noInternet,
    TResult? Function(AppStateError<T> value)? error,
    TResult? Function(AppStateSuccess<T> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateInitial<T> value)? initial,
    TResult Function(AppStateLoading<T> value)? loading,
    TResult Function(AppStateInternet<T> value)? noInternet,
    TResult Function(AppStateError<T> value)? error,
    TResult Function(AppStateSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AppStateInitial<T> implements AppState<T> {
  const factory AppStateInitial() = _$AppStateInitial<T>;
}

/// @nodoc
abstract class _$$AppStateLoadingCopyWith<T, $Res> {
  factory _$$AppStateLoadingCopyWith(_$AppStateLoading<T> value,
          $Res Function(_$AppStateLoading<T>) then) =
      __$$AppStateLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AppStateLoadingCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res, _$AppStateLoading<T>>
    implements _$$AppStateLoadingCopyWith<T, $Res> {
  __$$AppStateLoadingCopyWithImpl(
      _$AppStateLoading<T> _value, $Res Function(_$AppStateLoading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppStateLoading<T> implements AppStateLoading<T> {
  const _$AppStateLoading();

  @override
  String toString() {
    return 'AppState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStateLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(String message) error,
    required TResult Function(T data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(String message)? error,
    TResult? Function(T data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(String message)? error,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateInitial<T> value) initial,
    required TResult Function(AppStateLoading<T> value) loading,
    required TResult Function(AppStateInternet<T> value) noInternet,
    required TResult Function(AppStateError<T> value) error,
    required TResult Function(AppStateSuccess<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateInitial<T> value)? initial,
    TResult? Function(AppStateLoading<T> value)? loading,
    TResult? Function(AppStateInternet<T> value)? noInternet,
    TResult? Function(AppStateError<T> value)? error,
    TResult? Function(AppStateSuccess<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateInitial<T> value)? initial,
    TResult Function(AppStateLoading<T> value)? loading,
    TResult Function(AppStateInternet<T> value)? noInternet,
    TResult Function(AppStateError<T> value)? error,
    TResult Function(AppStateSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AppStateLoading<T> implements AppState<T> {
  const factory AppStateLoading() = _$AppStateLoading<T>;
}

/// @nodoc
abstract class _$$AppStateInternetCopyWith<T, $Res> {
  factory _$$AppStateInternetCopyWith(_$AppStateInternet<T> value,
          $Res Function(_$AppStateInternet<T>) then) =
      __$$AppStateInternetCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AppStateInternetCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res, _$AppStateInternet<T>>
    implements _$$AppStateInternetCopyWith<T, $Res> {
  __$$AppStateInternetCopyWithImpl(
      _$AppStateInternet<T> _value, $Res Function(_$AppStateInternet<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppStateInternet<T> implements AppStateInternet<T> {
  const _$AppStateInternet();

  @override
  String toString() {
    return 'AppState<$T>.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStateInternet<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(String message) error,
    required TResult Function(T data) success,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(String message)? error,
    TResult? Function(T data)? success,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(String message)? error,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateInitial<T> value) initial,
    required TResult Function(AppStateLoading<T> value) loading,
    required TResult Function(AppStateInternet<T> value) noInternet,
    required TResult Function(AppStateError<T> value) error,
    required TResult Function(AppStateSuccess<T> value) success,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateInitial<T> value)? initial,
    TResult? Function(AppStateLoading<T> value)? loading,
    TResult? Function(AppStateInternet<T> value)? noInternet,
    TResult? Function(AppStateError<T> value)? error,
    TResult? Function(AppStateSuccess<T> value)? success,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateInitial<T> value)? initial,
    TResult Function(AppStateLoading<T> value)? loading,
    TResult Function(AppStateInternet<T> value)? noInternet,
    TResult Function(AppStateError<T> value)? error,
    TResult Function(AppStateSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class AppStateInternet<T> implements AppState<T> {
  const factory AppStateInternet() = _$AppStateInternet<T>;
}

/// @nodoc
abstract class _$$AppStateErrorCopyWith<T, $Res> {
  factory _$$AppStateErrorCopyWith(
          _$AppStateError<T> value, $Res Function(_$AppStateError<T>) then) =
      __$$AppStateErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AppStateErrorCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res, _$AppStateError<T>>
    implements _$$AppStateErrorCopyWith<T, $Res> {
  __$$AppStateErrorCopyWithImpl(
      _$AppStateError<T> _value, $Res Function(_$AppStateError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AppStateError<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppStateError<T> implements AppStateError<T> {
  const _$AppStateError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateError<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateErrorCopyWith<T, _$AppStateError<T>> get copyWith =>
      __$$AppStateErrorCopyWithImpl<T, _$AppStateError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(String message) error,
    required TResult Function(T data) success,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(String message)? error,
    TResult? Function(T data)? success,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(String message)? error,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateInitial<T> value) initial,
    required TResult Function(AppStateLoading<T> value) loading,
    required TResult Function(AppStateInternet<T> value) noInternet,
    required TResult Function(AppStateError<T> value) error,
    required TResult Function(AppStateSuccess<T> value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateInitial<T> value)? initial,
    TResult? Function(AppStateLoading<T> value)? loading,
    TResult? Function(AppStateInternet<T> value)? noInternet,
    TResult? Function(AppStateError<T> value)? error,
    TResult? Function(AppStateSuccess<T> value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateInitial<T> value)? initial,
    TResult Function(AppStateLoading<T> value)? loading,
    TResult Function(AppStateInternet<T> value)? noInternet,
    TResult Function(AppStateError<T> value)? error,
    TResult Function(AppStateSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AppStateError<T> implements AppState<T> {
  const factory AppStateError({required final String message}) =
      _$AppStateError<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$AppStateErrorCopyWith<T, _$AppStateError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppStateSuccessCopyWith<T, $Res> {
  factory _$$AppStateSuccessCopyWith(_$AppStateSuccess<T> value,
          $Res Function(_$AppStateSuccess<T>) then) =
      __$$AppStateSuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$AppStateSuccessCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res, _$AppStateSuccess<T>>
    implements _$$AppStateSuccessCopyWith<T, $Res> {
  __$$AppStateSuccessCopyWithImpl(
      _$AppStateSuccess<T> _value, $Res Function(_$AppStateSuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AppStateSuccess<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AppStateSuccess<T> implements AppStateSuccess<T> {
  const _$AppStateSuccess({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'AppState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateSuccessCopyWith<T, _$AppStateSuccess<T>> get copyWith =>
      __$$AppStateSuccessCopyWithImpl<T, _$AppStateSuccess<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(String message) error,
    required TResult Function(T data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(String message)? error,
    TResult? Function(T data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(String message)? error,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateInitial<T> value) initial,
    required TResult Function(AppStateLoading<T> value) loading,
    required TResult Function(AppStateInternet<T> value) noInternet,
    required TResult Function(AppStateError<T> value) error,
    required TResult Function(AppStateSuccess<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateInitial<T> value)? initial,
    TResult? Function(AppStateLoading<T> value)? loading,
    TResult? Function(AppStateInternet<T> value)? noInternet,
    TResult? Function(AppStateError<T> value)? error,
    TResult? Function(AppStateSuccess<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateInitial<T> value)? initial,
    TResult Function(AppStateLoading<T> value)? loading,
    TResult Function(AppStateInternet<T> value)? noInternet,
    TResult Function(AppStateError<T> value)? error,
    TResult Function(AppStateSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AppStateSuccess<T> implements AppState<T> {
  const factory AppStateSuccess({required final T data}) = _$AppStateSuccess<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$AppStateSuccessCopyWith<T, _$AppStateSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
