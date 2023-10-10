part of 'bottom_navigation_bloc.dart';

abstract class LoginStateEvent extends Equatable {
  const LoginStateEvent();
  @override
  List<Object> get props => [];
}

class LoginProcess extends LoginStateEvent {
  final bool? username;
  final bool? password;
  
 const LoginProcess({this.username, this.password});
  
}
