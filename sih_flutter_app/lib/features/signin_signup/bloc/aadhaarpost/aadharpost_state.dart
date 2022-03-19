part of 'aadharpost_bloc.dart';

@freezed
class AadharpostState with _$AadharpostState {
  const factory AadharpostState.initial() = _Initial;
  const factory AadharpostState.loading() = _loading;
  const factory AadharpostState.done() = _done;
  // const factory AadharpostState.signedIn() = _signedIn;

}
