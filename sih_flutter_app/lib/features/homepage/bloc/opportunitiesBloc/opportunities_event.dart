part of 'opportunities_bloc.dart';

@freezed
class OpportunitiesEvent with _$OpportunitiesEvent {
  const factory OpportunitiesEvent.loadOpportunities() = _loadOpportunities;
}
