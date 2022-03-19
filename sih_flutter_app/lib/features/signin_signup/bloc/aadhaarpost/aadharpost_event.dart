part of 'aadharpost_bloc.dart';

@freezed
class AadharpostEvent with _$AadharpostEvent {
  const factory AadharpostEvent.postAadhaar(
      {required String aadhaarNumber,
      required String otp,
      required String username,
      required String password}) = _PostAadhaar;
}
