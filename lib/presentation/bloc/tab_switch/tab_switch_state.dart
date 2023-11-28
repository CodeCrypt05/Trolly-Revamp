abstract class TabSwitchState {}

class InitialTabState extends TabSwitchState {
  final int index;
  InitialTabState(this.index);
}
