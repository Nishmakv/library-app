part of 'bottom_navigation_bloc.dart';

abstract class BottomNavigationState extends Equatable{
  
  const BottomNavigationState();
  @override
  List<Object>get props=>[];
}


final class BottomNavigationInitial extends BottomNavigationState {
  const BottomNavigationInitial();
}

 class BottomNavigationLoading extends BottomNavigationState {}

 class BottomNavigationSuccess extends BottomNavigationState {}

 class BottomNavigationFailure extends BottomNavigationState {}
