import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:figma_app/data/employee_data_source.dart';
import 'package:figma_app/data/profile_data_source.dart';
import 'package:figma_app/model/profile_get_model.dart';
import 'package:figma_app/model/profile_model.dart';

part 'profile_bloc_event.dart';
part 'profile_bloc_state.dart';

class ProfileBlocBloc extends Bloc<ProfileBlocEvent, ProfileBlocState> {
  ProfileDataSource user1 = ProfileDataSource();
  EmployeeDataSource user2=EmployeeDataSource();
  ProfileBlocBloc() : super(ProfileBlocInitial());
  @override
  Stream<ProfileBlocState> mapEventToState(ProfileBlocEvent event) async* {
    if (event is ListProfile) {
      yield* profileChange();
    } else if (event is ProfileGet) {
      yield* employeeDetail(event.id);
    }
  }

  Stream<ProfileBlocState> profileChange() async* {
    yield ProfileBlocLoading();
  final dataResponse = await user1.profileLogin();
    if (dataResponse.isNotEmpty) {
      yield ProfileBlocSuccess(profileData: dataResponse);
    } else {
      yield ProfileBlocfailure();
    }
  }

  Stream<ProfileBlocState> employeeDetail(int?id) async* {
    yield GetEmployeeDetailsLoading();
    final dataResponse = await user2.employeeDetails(id: id);
    if (dataResponse.id!=null) {
      yield GetEmployeeDetailsSuccess(employeeData: dataResponse);
    } else {
      yield GetEmployeeDetailsFailure();
    }
  }
}

employeeChange() {}
