part of 'verifyauth_bloc.dart';

@freezed
class VerifyauthState with _$VerifyauthState {
  const factory VerifyauthState.loading() = _loading;
  const factory VerifyauthState.signedin({required SudentsInformationGet sudentsInformationGet}) = _signedin;
  const factory VerifyauthState.signedOut() = _signedOut;
}
