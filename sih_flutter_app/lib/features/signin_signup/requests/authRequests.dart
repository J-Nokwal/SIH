import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sih_flutter_app/core/errors.dart';
import 'package:sih_flutter_app/features/signin_signup/models/collegesListGet.dart';
import 'package:sih_flutter_app/features/signin_signup/models/collegesSetPost.dart';
import 'package:sih_flutter_app/features/signin_signup/models/collegesSetResponse.dart';
import 'package:sih_flutter_app/features/signin_signup/models/enterAadhaarPostModel.dart';
import 'package:sih_flutter_app/features/signin_signup/models/enterAadhaarResponseModel.dart';
import 'package:sih_flutter_app/features/signin_signup/models/signInRequestModel.dart';
import 'package:sih_flutter_app/features/signin_signup/models/sudentsInformationPost.dart';
import 'package:sih_flutter_app/features/signin_signup/models/verifyAadhaarPostModel.dart';
import 'package:sih_flutter_app/features/signin_signup/models/verifyAadhaarResponseModel.dart';

import '../models/signinPostmodel.dart';

@singleton
class AuthRequests {
  // final Dio dioa=Dio(BaseOptions(baseUrl:"" ));
  final Dio dio;
  AuthRequests({required this.dio});
  Future<SignInResponseModel?> signInPost({required String username, required String password}) async {
    Response<String> response =
        await dio.post('/auth/student/signin', data: SignInPostModel(password: password, username: username).toJson());
    if (response.statusCode == 200) {
      final body = signInResponseModelFromJson(response.data!);
      if (body.error != false) {
        throw AppExceptions.apiSendsErrorStatus(message: body.message);
      }
      return body;
    } else {
      throw AppExceptions.statusCodeNot200();
    }
  }

  Future<EnterAadaarResponseModel> aadhaarNumberPost({required String aadhaarNumber}) async {
    Response<String> response =
        await dio.post('/auth/student/fillAadhaar', data: EnterAadaarPostModel(aadhaarNumber: aadhaarNumber));
    if (response.statusCode == 200) {
      final body = enterAadaarResponseModelFromJson(response.data!);
      if (body.error != false) {
        throw AppExceptions.apiSendsErrorStatus(message: body.message);
      }
      return body;
    } else {
      throw AppExceptions.statusCodeNot200();
    }
  }

  Future<VerifyAadhaarResponseModel> aadhaarNumberVerifyPost(
      {required String otp, required String username, required String password}) async {
    Response<String> response = await dio.post('/auth/student/verifyAadhaar',
        data: VerifyAadhaarPostModel(otp: otp, username: username, password: password));
    if (response.statusCode == 200) {
      print(response.data);
      final body = verifyAadhaarResponseModelFromJson(response.data!);
      if (body.error != false) {
        throw AppExceptions.apiSendsErrorStatus(message: body.message);
      }
      return body;
    } else {
      throw AppExceptions.statusCodeNot200();
    }
  }

  Future<CollegesListGetResponse> collegesListGet() async {
    Response<String> response = await dio.get('/api/institute/list');
    if (response.statusCode == 200) {
      print(response.data);
      final body = collegesListGetFromJson(response.data!);
      if (body.error != false) {
        throw AppExceptions.apiSendsErrorStatus(message: body.message);
      }
      return body;
    } else {
      throw AppExceptions.statusCodeNot200();
    }
  }

  Future<CollegesSetResponse> collegeIdAndRollNoPost(
      {required String accesstoken, required String universityId, required String rollNumber}) async {
    Response<String> response = await dio.post('/api/student/setInstitute',
        options: Options(
          headers: {'authorization': accesstoken, 'Content-Type': 'application/json'},
        ),
        data: CollegesSetPost(universityId: universityId, rollNumber: rollNumber));
    if (response.statusCode == 200) {
      print(response.data);
      final body = collegesSetResponseFromJson(response.data!);
      if (body.error != false) {
        throw AppExceptions.apiSendsErrorStatus(message: body.message);
      }
      return body;
    } else {
      throw AppExceptions.statusCodeNot200();
    }
  }

  Future<SudentsInformationGet> sudentsInformationGet({required String accessToken}) async {
    Response<String> response = await dio.get('/api/student/me',
        options: Options(headers: {
          'authorization':
              "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImphZ3JpdG5va3dhbDlAZ21haWwuY29tIiwicm9sZSI6InN0dWRlbnQiLCJzdHVkZW50SWQiOiI2MjI4ZTE4ZTYzZjEwODdkMGFhNGQ1MDgiLCJ1c2VySWQiOiI2MjI4ZTE4ZTYzZjEwODdkMGFhNGQ1MDYiLCJpYXQiOjE2NDY4NDYzNTB9.gw1rpSHLNPVMJtbNwg2FvFAyLFwe2DbBPmXkujtjm2I"
        }));
    if (response.statusCode == 200) {
      print(response.data);
      final body = sudentsInformationGetFromJson(response.data!);
      if (body.error != false) {
        print(response.data);
        throw AppExceptions.apiSendsErrorStatus(message: body.message);
      }
      return body;
    } else {
      throw AppExceptions.statusCodeNot200();
    }
  }
}
