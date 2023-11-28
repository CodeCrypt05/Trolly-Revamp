import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trolly_revamp/presentation/bloc/tab_switch/tab_switch_event.dart';
import 'package:trolly_revamp/presentation/bloc/tab_switch/tab_switch_state.dart';

class TabSwitchBloc extends Bloc<TabSwitchEvent, TabSwitchState> {
  TabSwitchBloc() : super(InitialTabState(0)) {
    on<TabPressed>((event, emit) {
      emit(InitialTabState(event.index));
    });
  }
}
