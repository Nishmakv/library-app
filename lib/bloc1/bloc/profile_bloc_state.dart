part of 'profile_bloc_bloc.dart';

abstract class ProfileBlocState extends Equatable {
  const ProfileBlocState();

  @override
  List<Object> get props => [];
}

final class ProfileBlocInitial extends ProfileBlocState {}

final class ProfileBlocLoading extends ProfileBlocState {}

final class ProfileBlocSuccess extends ProfileBlocState {
  final List<ProfileModel>? profileData;
 const ProfileBlocSuccess({this.profileData});
}

final class ProfileBlocfailure extends ProfileBlocState {}


final class GetemployeeDetailsInitial extends ProfileBlocState {}

final class GetEmployeeDetailsLoading extends ProfileBlocState {}

final class GetEmployeeDetailsSuccess extends ProfileBlocState {
  final ProfileGetModel? employeeData;
 const GetEmployeeDetailsSuccess({this.employeeData});
}

final class GetEmployeeDetailsFailure extends ProfileBlocState {}
