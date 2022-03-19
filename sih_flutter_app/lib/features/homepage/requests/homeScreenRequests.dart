import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sih_flutter_app/features/homepage/bloc/opportunitiesBloc/opportunities_bloc.dart';
import 'package:sih_flutter_app/features/homepage/models/listopportunitiesResponse.dart';

import '../../../core/errors.dart';

@singleton
class HomeScreenRequests {
  final Dio dio;
  HomeScreenRequests({required this.dio});

  Future<ListopportunitiesResponse> opportunitiesPost() async {
    Response<String> response = await dio.post('/api/opportunity/listOpportunities');
    if (response.statusCode == 200) {
      final body = listopportunitiesResponseFromJson(response.data!);
      if (body.error != false) {
        throw AppExceptions.apiSendsErrorStatus(message: body.message);
      }
      return body;
    } else {
      throw AppExceptions.statusCodeNot200();
    }
  }
}
