import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sih_flutter_app/features/homepage/requests/homeScreenRequests.dart';

import '../../models/listopportunitiesResponse.dart';

part 'opportunities_event.dart';
part 'opportunities_state.dart';
part 'opportunities_bloc.freezed.dart';

@injectable
class OpportunitiesBloc extends Bloc<OpportunitiesEvent, OpportunitiesState> {
  final HomeScreenRequests homeScreenRequests;
  OpportunitiesBloc(this.homeScreenRequests) : super(_loading()) {
    on<OpportunitiesEvent>((event, emit) async {
      await event.map(loadOpportunities: (e) async {
        emit(_loading());
        // await Future.delayed(Duration(seconds: 5));
        emit(_loaded(listopportunitiesResponse: await homeScreenRequests.opportunitiesPost()));
      });
    });
  }
}
