part of 'profile_bloc_bloc.dart';

abstract class ProfileBlocEvent extends Equatable {
  const ProfileBlocEvent();

  @override
  List<Object> get props => [];
}

class   ListProfile extends ProfileBlocEvent {}

class ProfileGet extends ProfileBlocEvent {
  final int? id;
  const ProfileGet({this.id});

}
