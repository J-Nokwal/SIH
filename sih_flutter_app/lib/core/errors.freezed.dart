// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'errors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppExceptionsTearOff {
  const _$AppExceptionsTearOff();

  _AppExceptions call({String? message}) {
    return _AppExceptions(
      message: message,
    );
  }

  _networkException networkException({String? message}) {
    return _networkException(
      message: message,
    );
  }

  _statusCodeNot200 statusCodeNot200({String? message}) {
    return _statusCodeNot200(
      message: message,
    );
  }

  _apiSendsErrorStatus apiSendsErrorStatus({String? message}) {
    return _apiSendsErrorStatus(
      message: message,
    );
  }
}

/// @nodoc
const $AppExceptions = _$AppExceptionsTearOff();

/// @nodoc
mixin _$AppExceptions {
  String? get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function(String? message) networkException,
    required TResult Function(String? message) statusCodeNot200,
    required TResult Function(String? message) apiSendsErrorStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? networkException,
    TResult Function(String? message)? statusCodeNot200,
    TResult Function(String? message)? apiSendsErrorStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? networkException,
    TResult Function(String? message)? statusCodeNot200,
    TResult Function(String? message)? apiSendsErrorStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppExceptions value) $default, {
    required TResult Function(_networkException value) networkException,
    required TResult Function(_statusCodeNot200 value) statusCodeNot200,
    required TResult Function(_apiSendsErrorStatus value) apiSendsErrorStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppExceptionsCopyWith<AppExceptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppExceptionsCopyWith<$Res> {
  factory $AppExceptionsCopyWith(
          AppExceptions value, $Res Function(AppExceptions) then) =
      _$AppExceptionsCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$AppExceptionsCopyWithImpl<$Res>
    implements $AppExceptionsCopyWith<$Res> {
  _$AppExceptionsCopyWithImpl(this._value, this._then);

  final AppExceptions _value;
  // ignore: unused_field
  final $Res Function(AppExceptions) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AppExceptionsCopyWith<$Res>
    implements $AppExceptionsCopyWith<$Res> {
  factory _$AppExceptionsCopyWith(
          _AppExceptions value, $Res Function(_AppExceptions) then) =
      __$AppExceptionsCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$AppExceptionsCopyWithImpl<$Res>
    extends _$AppExceptionsCopyWithImpl<$Res>
    implements _$AppExceptionsCopyWith<$Res> {
  __$AppExceptionsCopyWithImpl(
      _AppExceptions _value, $Res Function(_AppExceptions) _then)
      : super(_value, (v) => _then(v as _AppExceptions));

  @override
  _AppExceptions get _value => super._value as _AppExceptions;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_AppExceptions(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AppExceptions implements _AppExceptions {
  _$_AppExceptions({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AppExceptions(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppExceptions &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$AppExceptionsCopyWith<_AppExceptions> get copyWith =>
      __$AppExceptionsCopyWithImpl<_AppExceptions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function(String? message) networkException,
    required TResult Function(String? message) statusCodeNot200,
    required TResult Function(String? message) apiSendsErrorStatus,
  }) {
    return $default(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? networkException,
    TResult Function(String? message)? statusCodeNot200,
    TResult Function(String? message)? apiSendsErrorStatus,
  }) {
    return $default?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? networkException,
    TResult Function(String? message)? statusCodeNot200,
    TResult Function(String? message)? apiSendsErrorStatus,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppExceptions value) $default, {
    required TResult Function(_networkException value) networkException,
    required TResult Function(_statusCodeNot200 value) statusCodeNot200,
    required TResult Function(_apiSendsErrorStatus value) apiSendsErrorStatus,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AppExceptions implements AppExceptions {
  factory _AppExceptions({String? message}) = _$_AppExceptions;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$AppExceptionsCopyWith<_AppExceptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$networkExceptionCopyWith<$Res>
    implements $AppExceptionsCopyWith<$Res> {
  factory _$networkExceptionCopyWith(
          _networkException value, $Res Function(_networkException) then) =
      __$networkExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$networkExceptionCopyWithImpl<$Res>
    extends _$AppExceptionsCopyWithImpl<$Res>
    implements _$networkExceptionCopyWith<$Res> {
  __$networkExceptionCopyWithImpl(
      _networkException _value, $Res Function(_networkException) _then)
      : super(_value, (v) => _then(v as _networkException));

  @override
  _networkException get _value => super._value as _networkException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_networkException(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_networkException implements _networkException {
  _$_networkException({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AppExceptions.networkException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _networkException &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$networkExceptionCopyWith<_networkException> get copyWith =>
      __$networkExceptionCopyWithImpl<_networkException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function(String? message) networkException,
    required TResult Function(String? message) statusCodeNot200,
    required TResult Function(String? message) apiSendsErrorStatus,
  }) {
    return networkException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? networkException,
    TResult Function(String? message)? statusCodeNot200,
    TResult Function(String? message)? apiSendsErrorStatus,
  }) {
    return networkException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? networkException,
    TResult Function(String? message)? statusCodeNot200,
    TResult Function(String? message)? apiSendsErrorStatus,
    required TResult orElse(),
  }) {
    if (networkException != null) {
      return networkException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppExceptions value) $default, {
    required TResult Function(_networkException value) networkException,
    required TResult Function(_statusCodeNot200 value) statusCodeNot200,
    required TResult Function(_apiSendsErrorStatus value) apiSendsErrorStatus,
  }) {
    return networkException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
  }) {
    return networkException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    required TResult orElse(),
  }) {
    if (networkException != null) {
      return networkException(this);
    }
    return orElse();
  }
}

abstract class _networkException implements AppExceptions {
  factory _networkException({String? message}) = _$_networkException;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$networkExceptionCopyWith<_networkException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$statusCodeNot200CopyWith<$Res>
    implements $AppExceptionsCopyWith<$Res> {
  factory _$statusCodeNot200CopyWith(
          _statusCodeNot200 value, $Res Function(_statusCodeNot200) then) =
      __$statusCodeNot200CopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$statusCodeNot200CopyWithImpl<$Res>
    extends _$AppExceptionsCopyWithImpl<$Res>
    implements _$statusCodeNot200CopyWith<$Res> {
  __$statusCodeNot200CopyWithImpl(
      _statusCodeNot200 _value, $Res Function(_statusCodeNot200) _then)
      : super(_value, (v) => _then(v as _statusCodeNot200));

  @override
  _statusCodeNot200 get _value => super._value as _statusCodeNot200;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_statusCodeNot200(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_statusCodeNot200 implements _statusCodeNot200 {
  _$_statusCodeNot200({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AppExceptions.statusCodeNot200(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _statusCodeNot200 &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$statusCodeNot200CopyWith<_statusCodeNot200> get copyWith =>
      __$statusCodeNot200CopyWithImpl<_statusCodeNot200>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function(String? message) networkException,
    required TResult Function(String? message) statusCodeNot200,
    required TResult Function(String? message) apiSendsErrorStatus,
  }) {
    return statusCodeNot200(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? networkException,
    TResult Function(String? message)? statusCodeNot200,
    TResult Function(String? message)? apiSendsErrorStatus,
  }) {
    return statusCodeNot200?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? networkException,
    TResult Function(String? message)? statusCodeNot200,
    TResult Function(String? message)? apiSendsErrorStatus,
    required TResult orElse(),
  }) {
    if (statusCodeNot200 != null) {
      return statusCodeNot200(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppExceptions value) $default, {
    required TResult Function(_networkException value) networkException,
    required TResult Function(_statusCodeNot200 value) statusCodeNot200,
    required TResult Function(_apiSendsErrorStatus value) apiSendsErrorStatus,
  }) {
    return statusCodeNot200(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
  }) {
    return statusCodeNot200?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    required TResult orElse(),
  }) {
    if (statusCodeNot200 != null) {
      return statusCodeNot200(this);
    }
    return orElse();
  }
}

abstract class _statusCodeNot200 implements AppExceptions {
  factory _statusCodeNot200({String? message}) = _$_statusCodeNot200;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$statusCodeNot200CopyWith<_statusCodeNot200> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$apiSendsErrorStatusCopyWith<$Res>
    implements $AppExceptionsCopyWith<$Res> {
  factory _$apiSendsErrorStatusCopyWith(_apiSendsErrorStatus value,
          $Res Function(_apiSendsErrorStatus) then) =
      __$apiSendsErrorStatusCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$apiSendsErrorStatusCopyWithImpl<$Res>
    extends _$AppExceptionsCopyWithImpl<$Res>
    implements _$apiSendsErrorStatusCopyWith<$Res> {
  __$apiSendsErrorStatusCopyWithImpl(
      _apiSendsErrorStatus _value, $Res Function(_apiSendsErrorStatus) _then)
      : super(_value, (v) => _then(v as _apiSendsErrorStatus));

  @override
  _apiSendsErrorStatus get _value => super._value as _apiSendsErrorStatus;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_apiSendsErrorStatus(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_apiSendsErrorStatus implements _apiSendsErrorStatus {
  _$_apiSendsErrorStatus({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AppExceptions.apiSendsErrorStatus(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _apiSendsErrorStatus &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$apiSendsErrorStatusCopyWith<_apiSendsErrorStatus> get copyWith =>
      __$apiSendsErrorStatusCopyWithImpl<_apiSendsErrorStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function(String? message) networkException,
    required TResult Function(String? message) statusCodeNot200,
    required TResult Function(String? message) apiSendsErrorStatus,
  }) {
    return apiSendsErrorStatus(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? networkException,
    TResult Function(String? message)? statusCodeNot200,
    TResult Function(String? message)? apiSendsErrorStatus,
  }) {
    return apiSendsErrorStatus?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? networkException,
    TResult Function(String? message)? statusCodeNot200,
    TResult Function(String? message)? apiSendsErrorStatus,
    required TResult orElse(),
  }) {
    if (apiSendsErrorStatus != null) {
      return apiSendsErrorStatus(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppExceptions value) $default, {
    required TResult Function(_networkException value) networkException,
    required TResult Function(_statusCodeNot200 value) statusCodeNot200,
    required TResult Function(_apiSendsErrorStatus value) apiSendsErrorStatus,
  }) {
    return apiSendsErrorStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
  }) {
    return apiSendsErrorStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppExceptions value)? $default, {
    TResult Function(_networkException value)? networkException,
    TResult Function(_statusCodeNot200 value)? statusCodeNot200,
    TResult Function(_apiSendsErrorStatus value)? apiSendsErrorStatus,
    required TResult orElse(),
  }) {
    if (apiSendsErrorStatus != null) {
      return apiSendsErrorStatus(this);
    }
    return orElse();
  }
}

abstract class _apiSendsErrorStatus implements AppExceptions {
  factory _apiSendsErrorStatus({String? message}) = _$_apiSendsErrorStatus;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$apiSendsErrorStatusCopyWith<_apiSendsErrorStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
