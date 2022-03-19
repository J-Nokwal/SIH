import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:sih_flutter_app/features/signin_signup/requests/authRequests.dart';

import '../../../../core/hiveStorage/hiveStorage.dart';

part 'aadharpost_event.dart';
part 'aadharpost_state.dart';
part 'aadharpost_bloc.freezed.dart';

@injectable
class AadharpostBloc extends Bloc<AadharpostEvent, AadharpostState> {
  final AuthRequests authRequests;
  AadharpostBloc(this.authRequests) : super(_Initial()) {
    on<AadharpostEvent>((event, emit) async {
      await event.map(postAadhaar: (e) async {
        emit(_loading());
        await authRequests.aadhaarNumberPost(aadhaarNumber: e.aadhaarNumber);
        final verifypostresponse =
            await authRequests.aadhaarNumberVerifyPost(otp: e.otp, username: e.username, password: e.password);
        final box = Hive.box<AuthHive>('authHive');
        box.put(
            "authHive",
            AuthHive()
              ..accesstoken = verifypostresponse.data.accessToken
              ..isAuthenticated = false);
        emit(_done());
      });
    });
  }
}
