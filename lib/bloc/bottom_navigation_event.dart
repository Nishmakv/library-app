part of 'bottom_navigation_bloc.dart';

abstract class BottomNavigationEvent extends Equatable {
  const BottomNavigationEvent();
  @override
  List<Object> get props => [];
}

class TabIndexChangeEvent extends BottomNavigationEvent {
  final bool? changeIndex;
  const TabIndexChangeEvent({this.changeIndex});
}
