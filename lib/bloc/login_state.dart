part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
  
  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}
final class LoginLoading extends LoginState {}
final class LoginSuccess extends LoginState {}
final class LoginFailure extends LoginState {}

final class RegisterInitial extends LoginState {}
final class RegisterLoading extends LoginState {}
final class RegisterSuccess extends LoginState {}
final class RegisterFailure extends LoginState {}



