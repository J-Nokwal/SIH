import 'package:freezed_annotation/freezed_annotation.dart';
part 'errors.freezed.dart';

@freezed
abstract class AppExceptions with _$AppExceptions, Exception {
  // final String? message;
  // AppExceptions({this.message});
  factory AppExceptions({String? message}) = _AppExceptions;

  factory AppExceptions.networkException({String? message}) = _networkException;
  factory AppExceptions.statusCodeNot200({String? message}) = _statusCodeNot200;
  factory AppExceptions.apiSendsErrorStatus({String? message}) = _apiSendsErrorStatus;
}
