abstract class TabSwitchEvent {}

class TabPressed extends TabSwitchEvent {
  final int index;
  TabPressed(this.index);
}
