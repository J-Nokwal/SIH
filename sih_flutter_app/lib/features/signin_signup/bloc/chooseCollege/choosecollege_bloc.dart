import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:sih_flutter_app/core/hiveStorage/hiveStorage.dart';
import 'package:sih_flutter_app/features/signin_signup/requests/authRequests.dart';

import '../../models/collegesListGet.dart';
import '../../models/sudentsInformationPost.dart';

part 'choosecollege_event.dart';
part 'choosecollege_state.dart';
part 'choosecollege_bloc.freezed.dart';

@injectable
class ChoosecollegeBloc extends Bloc<ChoosecollegeEvent, ChoosecollegeState> {
  final AuthRequests authRequests;
  ChoosecollegeBloc(this.authRequests) : super(_loadingColleges()) {
    on<ChoosecollegeEvent>((event, emit) async {
      await event.map(
        loadColleges: (_) async {
          emit(_loadingColleges());
          final collegesListGetResponse = await authRequests.collegesListGet();
          // await Future.delayed(Duration(seconds: 5));
          emit(_loadedColleges(collegesListGetResponse: collegesListGetResponse));
        },
        postCollege: (e) async {
          emit(_postingCollege());
          final box = Hive.box<AuthHive>('authHive');

          final authHive = box.get("authHive", defaultValue: AuthHive()..isAuthenticated = false)!;
          // authHive.accesstoken
          final collegesSetResponse = await authRequests.collegeIdAndRollNoPost(
              accesstoken: authHive.accesstoken, rollNumber: e.rollNumber, universityId: e.universityId);
          await box.put(
              "authHive",
              AuthHive()
                ..accesstoken = collegesSetResponse.data.accessToken
                ..isAuthenticated = false);
          emit(_done(
              sudentsInformationGet:
                  await authRequests.sudentsInformationGet(accessToken: collegesSetResponse.data.accessToken)));
        },
      );
    });
  }
}
