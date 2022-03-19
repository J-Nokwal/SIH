// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verifyauth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VerifyauthEventTearOff {
  const _$VerifyauthEventTearOff();

  _checkAuth checkAuth() {
    return const _checkAuth();
  }
}

/// @nodoc
const $VerifyauthEvent = _$VerifyauthEventTearOff();

/// @nodoc
mixin _$VerifyauthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_checkAuth value) checkAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_checkAuth value)? checkAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_checkAuth value)? checkAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyauthEventCopyWith<$Res> {
  factory $VerifyauthEventCopyWith(
          VerifyauthEvent value, $Res Function(VerifyauthEvent) then) =
      _$VerifyauthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyauthEventCopyWithImpl<$Res>
    implements $VerifyauthEventCopyWith<$Res> {
  _$VerifyauthEventCopyWithImpl(this._value, this._then);

  final VerifyauthEvent _value;
  // ignore: unused_field
  final $Res Function(VerifyauthEvent) _then;
}

/// @nodoc
abstract class _$checkAuthCopyWith<$Res> {
  factory _$checkAuthCopyWith(
          _checkAuth value, $Res Function(_checkAuth) then) =
      __$checkAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$checkAuthCopyWithImpl<$Res> extends _$VerifyauthEventCopyWithImpl<$Res>
    implements _$checkAuthCopyWith<$Res> {
  __$checkAuthCopyWithImpl(_checkAuth _value, $Res Function(_checkAuth) _then)
      : super(_value, (v) => _then(v as _checkAuth));

  @override
  _checkAuth get _value => super._value as _checkAuth;
}

/// @nodoc

class _$_checkAuth implements _checkAuth {
  const _$_checkAuth();

  @override
  String toString() {
    return 'VerifyauthEvent.checkAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _checkAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
  }) {
    return checkAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
  }) {
    return checkAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_checkAuth value) checkAuth,
  }) {
    return checkAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_checkAuth value)? checkAuth,
  }) {
    return checkAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_checkAuth value)? checkAuth,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth(this);
    }
    return orElse();
  }
}

abstract class _checkAuth implements VerifyauthEvent {
  const factory _checkAuth() = _$_checkAuth;
}

/// @nodoc
class _$VerifyauthStateTearOff {
  const _$VerifyauthStateTearOff();

  _loading loading() {
    return const _loading();
  }

  _signedin signedin({required SudentsInformationGet sudentsInformationGet}) {
    return _signedin(
      sudentsInformationGet: sudentsInformationGet,
    );
  }

  _signedOut signedOut() {
    return const _signedOut();
  }
}

/// @nodoc
const $VerifyauthState = _$VerifyauthStateTearOff();

/// @nodoc
mixin _$VerifyauthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SudentsInformationGet sudentsInformationGet)
        signedin,
    required TResult Function() signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SudentsInformationGet sudentsInformationGet)? signedin,
    TResult Function()? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SudentsInformationGet sudentsInformationGet)? signedin,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_signedin value) signedin,
    required TResult Function(_signedOut value) signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_signedin value)? signedin,
    TResult Function(_signedOut value)? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_signedin value)? signedin,
    TResult Function(_signedOut value)? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyauthStateCopyWith<$Res> {
  factory $VerifyauthStateCopyWith(
          VerifyauthState value, $Res Function(VerifyauthState) then) =
      _$VerifyauthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyauthStateCopyWithImpl<$Res>
    implements $VerifyauthStateCopyWith<$Res> {
  _$VerifyauthStateCopyWithImpl(this._value, this._then);

  final VerifyauthState _value;
  // ignore: unused_field
  final $Res Function(VerifyauthState) _then;
}

/// @nodoc
abstract class _$loadingCopyWith<$Res> {
  factory _$loadingCopyWith(_loading value, $Res Function(_loading) then) =
      __$loadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$loadingCopyWithImpl<$Res> extends _$VerifyauthStateCopyWithImpl<$Res>
    implements _$loadingCopyWith<$Res> {
  __$loadingCopyWithImpl(_loading _value, $Res Function(_loading) _then)
      : super(_value, (v) => _then(v as _loading));

  @override
  _loading get _value => super._value as _loading;
}

/// @nodoc

class _$_loading implements _loading {
  const _$_loading();

  @override
  String toString() {
    return 'VerifyauthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SudentsInformationGet sudentsInformationGet)
        signedin,
    required TResult Function() signedOut,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SudentsInformationGet sudentsInformationGet)? signedin,
    TResult Function()? signedOut,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SudentsInformationGet sudentsInformationGet)? signedin,
    TResult Function()? signedOut,
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
    required TResult Function(_loading value) loading,
    required TResult Function(_signedin value) signedin,
    required TResult Function(_signedOut value) signedOut,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_signedin value)? signedin,
    TResult Function(_signedOut value)? signedOut,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_signedin value)? signedin,
    TResult Function(_signedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements VerifyauthState {
  const factory _loading() = _$_loading;
}

/// @nodoc
abstract class _$signedinCopyWith<$Res> {
  factory _$signedinCopyWith(_signedin value, $Res Function(_signedin) then) =
      __$signedinCopyWithImpl<$Res>;
  $Res call({SudentsInformationGet sudentsInformationGet});
}

/// @nodoc
class __$signedinCopyWithImpl<$Res> extends _$VerifyauthStateCopyWithImpl<$Res>
    implements _$signedinCopyWith<$Res> {
  __$signedinCopyWithImpl(_signedin _value, $Res Function(_signedin) _then)
      : super(_value, (v) => _then(v as _signedin));

  @override
  _signedin get _value => super._value as _signedin;

  @override
  $Res call({
    Object? sudentsInformationGet = freezed,
  }) {
    return _then(_signedin(
      sudentsInformationGet: sudentsInformationGet == freezed
          ? _value.sudentsInformationGet
          : sudentsInformationGet // ignore: cast_nullable_to_non_nullable
              as SudentsInformationGet,
    ));
  }
}

/// @nodoc

class _$_signedin implements _signedin {
  const _$_signedin({required this.sudentsInformationGet});

  @override
  final SudentsInformationGet sudentsInformationGet;

  @override
  String toString() {
    return 'VerifyauthState.signedin(sudentsInformationGet: $sudentsInformationGet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _signedin &&
            const DeepCollectionEquality()
                .equals(other.sudentsInformationGet, sudentsInformationGet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sudentsInformationGet));

  @JsonKey(ignore: true)
  @override
  _$signedinCopyWith<_signedin> get copyWith =>
      __$signedinCopyWithImpl<_signedin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SudentsInformationGet sudentsInformationGet)
        signedin,
    required TResult Function() signedOut,
  }) {
    return signedin(sudentsInformationGet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SudentsInformationGet sudentsInformationGet)? signedin,
    TResult Function()? signedOut,
  }) {
    return signedin?.call(sudentsInformationGet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SudentsInformationGet sudentsInformationGet)? signedin,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signedin != null) {
      return signedin(sudentsInformationGet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_signedin value) signedin,
    required TResult Function(_signedOut value) signedOut,
  }) {
    return signedin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_signedin value)? signedin,
    TResult Function(_signedOut value)? signedOut,
  }) {
    return signedin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_signedin value)? signedin,
    TResult Function(_signedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (signedin != null) {
      return signedin(this);
    }
    return orElse();
  }
}

abstract class _signedin implements VerifyauthState {
  const factory _signedin(
      {required SudentsInformationGet sudentsInformationGet}) = _$_signedin;

  SudentsInformationGet get sudentsInformationGet;
  @JsonKey(ignore: true)
  _$signedinCopyWith<_signedin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$signedOutCopyWith<$Res> {
  factory _$signedOutCopyWith(
          _signedOut value, $Res Function(_signedOut) then) =
      __$signedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$signedOutCopyWithImpl<$Res> extends _$VerifyauthStateCopyWithImpl<$Res>
    implements _$signedOutCopyWith<$Res> {
  __$signedOutCopyWithImpl(_signedOut _value, $Res Function(_signedOut) _then)
      : super(_value, (v) => _then(v as _signedOut));

  @override
  _signedOut get _value => super._value as _signedOut;
}

/// @nodoc

class _$_signedOut implements _signedOut {
  const _$_signedOut();

  @override
  String toString() {
    return 'VerifyauthState.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _signedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SudentsInformationGet sudentsInformationGet)
        signedin,
    required TResult Function() signedOut,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SudentsInformationGet sudentsInformationGet)? signedin,
    TResult Function()? signedOut,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SudentsInformationGet sudentsInformationGet)? signedin,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_signedin value) signedin,
    required TResult Function(_signedOut value) signedOut,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_signedin value)? signedin,
    TResult Function(_signedOut value)? signedOut,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_signedin value)? signedin,
    TResult Function(_signedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _signedOut implements VerifyauthState {
  const factory _signedOut() = _$_signedOut;
}
