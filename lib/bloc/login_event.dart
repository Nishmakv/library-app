part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginProcess extends LoginEvent {
  final String? username;
  final String? password;
  const LoginProcess({this.username, this.password});
}

class RegisterProcess extends LoginEvent {
  final String? firstname;
  final String? lastname;
  final String? email;
  final String? password;
 const RegisterProcess({this.firstname, this.lastname, this.email, this.password});
}
