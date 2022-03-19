part of 'choosecollege_bloc.dart';

@freezed
class ChoosecollegeState with _$ChoosecollegeState {
  const factory ChoosecollegeState.loadingColleges() = _loadingColleges;
  const factory ChoosecollegeState.loadedColleges({required CollegesListGetResponse collegesListGetResponse}) =
      _loadedColleges;
  const factory ChoosecollegeState.postingCollege() = _postingCollege;
  const factory ChoosecollegeState.done({required SudentsInformationGet sudentsInformationGet}) = _done;
}
