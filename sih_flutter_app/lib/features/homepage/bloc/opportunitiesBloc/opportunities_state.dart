part of 'opportunities_bloc.dart';

@freezed
class OpportunitiesState with _$OpportunitiesState {
  const factory OpportunitiesState.loading() = _loading;
  const factory OpportunitiesState.loaded({required ListopportunitiesResponse listopportunitiesResponse}) = _loaded;
}
