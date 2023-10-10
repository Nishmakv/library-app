part of 'bottom_navigation_bloc.dart';

abstract class LoginState extends Equatable{
  
  const LoginState();
  @override
  List<Object>get props=>[];
}


final class LoginStateInitial extends LoginState {
  const LoginStateInitial();
}

 class LoginStateLoading extends LoginState  {}

 class LoginStateSuccess extends LoginState {}

 class LoginStateFailure extends LoginState {}
