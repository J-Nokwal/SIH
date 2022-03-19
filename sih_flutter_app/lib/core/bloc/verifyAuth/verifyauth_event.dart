part of 'verifyauth_bloc.dart';

@freezed
class VerifyauthEvent with _$VerifyauthEvent {
  const factory VerifyauthEvent.checkAuth() = _checkAuth;
}
