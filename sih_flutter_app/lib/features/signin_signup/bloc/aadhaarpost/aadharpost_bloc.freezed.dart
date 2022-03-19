// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'aadharpost_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AadharpostEventTearOff {
  const _$AadharpostEventTearOff();

  _PostAadhaar postAadhaar(
      {required String aadhaarNumber,
      required String otp,
      required String username,
      required String password}) {
    return _PostAadhaar(
      aadhaarNumber: aadhaarNumber,
      otp: otp,
      username: username,
      password: password,
    );
  }
}

/// @nodoc
const $AadharpostEvent = _$AadharpostEventTearOff();

/// @nodoc
mixin _$AadharpostEvent {
  String get aadhaarNumber => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String aadhaarNumber, String otp, String username, String password)
        postAadhaar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String aadhaarNumber, String otp, String username, String password)?
        postAadhaar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String aadhaarNumber, String otp, String username, String password)?
        postAadhaar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostAadhaar value) postAadhaar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostAadhaar value)? postAadhaar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostAadhaar value)? postAadhaar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AadharpostEventCopyWith<AadharpostEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AadharpostEventCopyWith<$Res> {
  factory $AadharpostEventCopyWith(
          AadharpostEvent value, $Res Function(AadharpostEvent) then) =
      _$AadharpostEventCopyWithImpl<$Res>;
  $Res call(
      {String aadhaarNumber, String otp, String username, String password});
}

/// @nodoc
class _$AadharpostEventCopyWithImpl<$Res>
    implements $AadharpostEventCopyWith<$Res> {
  _$AadharpostEventCopyWithImpl(this._value, this._then);

  final AadharpostEvent _value;
  // ignore: unused_field
  final $Res Function(AadharpostEvent) _then;

  @override
  $Res call({
    Object? aadhaarNumber = freezed,
    Object? otp = freezed,
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      aadhaarNumber: aadhaarNumber == freezed
          ? _value.aadhaarNumber
          : aadhaarNumber // ignore: cast_nullable_to_non_nullable
              as String,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PostAadhaarCopyWith<$Res>
    implements $AadharpostEventCopyWith<$Res> {
  factory _$PostAadhaarCopyWith(
          _PostAadhaar value, $Res Function(_PostAadhaar) then) =
      __$PostAadhaarCopyWithImpl<$Res>;
  @override
  $Res call(
      {String aadhaarNumber, String otp, String username, String password});
}

/// @nodoc
class __$PostAadhaarCopyWithImpl<$Res>
    extends _$AadharpostEventCopyWithImpl<$Res>
    implements _$PostAadhaarCopyWith<$Res> {
  __$PostAadhaarCopyWithImpl(
      _PostAadhaar _value, $Res Function(_PostAadhaar) _then)
      : super(_value, (v) => _then(v as _PostAadhaar));

  @override
  _PostAadhaar get _value => super._value as _PostAadhaar;

  @override
  $Res call({
    Object? aadhaarNumber = freezed,
    Object? otp = freezed,
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_PostAadhaar(
      aadhaarNumber: aadhaarNumber == freezed
          ? _value.aadhaarNumber
          : aadhaarNumber // ignore: cast_nullable_to_non_nullable
              as String,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PostAadhaar implements _PostAadhaar {
  const _$_PostAadhaar(
      {required this.aadhaarNumber,
      required this.otp,
      required this.username,
      required this.password});

  @override
  final String aadhaarNumber;
  @override
  final String otp;
  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AadharpostEvent.postAadhaar(aadhaarNumber: $aadhaarNumber, otp: $otp, username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostAadhaar &&
            const DeepCollectionEquality()
                .equals(other.aadhaarNumber, aadhaarNumber) &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(aadhaarNumber),
      const DeepCollectionEquality().hash(otp),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$PostAadhaarCopyWith<_PostAadhaar> get copyWith =>
      __$PostAadhaarCopyWithImpl<_PostAadhaar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String aadhaarNumber, String otp, String username, String password)
        postAadhaar,
  }) {
    return postAadhaar(aadhaarNumber, otp, username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String aadhaarNumber, String otp, String username, String password)?
        postAadhaar,
  }) {
    return postAadhaar?.call(aadhaarNumber, otp, username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String aadhaarNumber, String otp, String username, String password)?
        postAadhaar,
    required TResult orElse(),
  }) {
    if (postAadhaar != null) {
      return postAadhaar(aadhaarNumber, otp, username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostAadhaar value) postAadhaar,
  }) {
    return postAadhaar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostAadhaar value)? postAadhaar,
  }) {
    return postAadhaar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostAadhaar value)? postAadhaar,
    required TResult orElse(),
  }) {
    if (postAadhaar != null) {
      return postAadhaar(this);
    }
    return orElse();
  }
}

abstract class _PostAadhaar implements AadharpostEvent {
  const factory _PostAadhaar(
      {required String aadhaarNumber,
      required String otp,
      required String username,
      required String password}) = _$_PostAadhaar;

  @override
  String get aadhaarNumber;
  @override
  String get otp;
  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$PostAadhaarCopyWith<_PostAadhaar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AadharpostStateTearOff {
  const _$AadharpostStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _loading loading() {
    return const _loading();
  }

  _done done() {
    return const _done();
  }
}

/// @nodoc
const $AadharpostState = _$AadharpostStateTearOff();

/// @nodoc
mixin _$AadharpostState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_done value) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_done value)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_done value)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AadharpostStateCopyWith<$Res> {
  factory $AadharpostStateCopyWith(
          AadharpostState value, $Res Function(AadharpostState) then) =
      _$AadharpostStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AadharpostStateCopyWithImpl<$Res>
    implements $AadharpostStateCopyWith<$Res> {
  _$AadharpostStateCopyWithImpl(this._value, this._then);

  final AadharpostState _value;
  // ignore: unused_field
  final $Res Function(AadharpostState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AadharpostStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AadharpostState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() done,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_done value) done,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_done value)? done,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_done value)? done,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AadharpostState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$loadingCopyWith<$Res> {
  factory _$loadingCopyWith(_loading value, $Res Function(_loading) then) =
      __$loadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$loadingCopyWithImpl<$Res> extends _$AadharpostStateCopyWithImpl<$Res>
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
    return 'AadharpostState.loading()';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() done,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_done value) done,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_done value)? done,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_done value)? done,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements AadharpostState {
  const factory _loading() = _$_loading;
}

/// @nodoc
abstract class _$doneCopyWith<$Res> {
  factory _$doneCopyWith(_done value, $Res Function(_done) then) =
      __$doneCopyWithImpl<$Res>;
}

/// @nodoc
class __$doneCopyWithImpl<$Res> extends _$AadharpostStateCopyWithImpl<$Res>
    implements _$doneCopyWith<$Res> {
  __$doneCopyWithImpl(_done _value, $Res Function(_done) _then)
      : super(_value, (v) => _then(v as _done));

  @override
  _done get _value => super._value as _done;
}

/// @nodoc

class _$_done implements _done {
  const _$_done();

  @override
  String toString() {
    return 'AadharpostState.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _done);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() done,
  }) {
    return done();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
  }) {
    return done?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_done value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_done value)? done,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_done value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _done implements AadharpostState {
  const factory _done() = _$_done;
}
