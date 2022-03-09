import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'aaa_bloc.dart';

part 'aaa_event.dart';
part 'aaa_state.dart';
part 'aaa_bloc.freezed.dart';

class AaaBloc extends Bloc<AaaEvent, AaaState> {
  AaaBloc() : super(const AaaState.AaaInitial()) {
    on<AaaEvent>((event, emit) {
      emit(AaaState.ssad());
      // TODO: implement event handler
    });
  }
}
