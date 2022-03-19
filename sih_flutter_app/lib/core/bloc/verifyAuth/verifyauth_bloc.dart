import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:sih_flutter_app/core/hiveStorage/hiveStorage.dart';
import 'package:sih_flutter_app/features/signin_signup/requests/authRequests.dart';

import '../../../features/signin_signup/models/sudentsInformationPost.dart';

part 'verifyauth_event.dart';
part 'verifyauth_state.dart';
part 'verifyauth_bloc.freezed.dart';

@injectable
class VerifyauthBloc extends Bloc<VerifyauthEvent, VerifyauthState> {
  final AuthRequests authRequests;
  VerifyauthBloc(this.authRequests) : super(const _loading()) {
    on<VerifyauthEvent>((event, emit) async {
      await event.map(checkAuth: (_checkAuth _checkAuth) async {
        emit(_loading());

        final box = Hive.box<AuthHive>('authHive');
        final b = box.get("authHive", defaultValue: AuthHive()..isAuthenticated = false);
        if (b!.isAuthenticated) {
          // emit(_signedin());
          emit(_signedin(sudentsInformationGet: await authRequests.sudentsInformationGet(accessToken: b.accesstoken)));
        } else {
          // box.put(
          //     "authHive",
          //     AuthHive()
          //       ..accesstoken = ""
          //       ..isAuthenticated = false);

          // await Future.delayed(Duration(seconds: 1));
          emit(_signedOut());
        }
      });
    });
  }
}
