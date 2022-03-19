part of 'choosecollege_bloc.dart';

@freezed
class ChoosecollegeEvent with _$ChoosecollegeEvent {
  const factory ChoosecollegeEvent.loadColleges() = _LoadColleges;
  const factory ChoosecollegeEvent.postCollege({required String universityId, required String rollNumber}) =
      _postCollege;
}
