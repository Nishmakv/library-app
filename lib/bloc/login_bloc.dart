import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:figma_app/data/user_data_source.dart';
import 'package:figma_app/utils/data_response.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  UserDataSource user = UserDataSource();
  LoginBloc() : super(LoginInitial());
  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    //future used for when there is only one data
    if (event is LoginProcess) {
      yield* loginChange(event.username, event.password);
    } else if (event is RegisterProcess) {
      yield* registerSuccess(
          event.firstname, event.lastname, event.email, event.password);
    }
  }

  Stream<LoginState> loginChange(String? username, String? password) async* {
    yield LoginLoading();
    final dataResponse =
        await user.userLogin(password: password, contact: username);
    if (dataResponse.data1) {
      yield LoginSuccess();
    } else {
      yield LoginFailure();
    }
  }

  Stream<LoginState> registerSuccess(String? firstname, String? lasttname,
      String? email, String? password) async* {
        
    yield RegisterLoading();
    final dataResponse =
        await user.userLogin(password: password, contact: email);
    if (dataResponse.data1) {
      yield RegisterSuccess();
    } else {
      yield RegisterFailure();
    }
  }
}

// class RegisterBloc extends Bloc<LoginEvent, LoginState> {
//   UserDataSource user = UserDataSource();
//   RegisterBloc() : super(LoginInitial());
//   @override
//   Stream<LoginState> mapEventToState(LoginEvent event) async* {
//     if (event is RegisterProcess) {
//       yield* registerSuccess(
//           event.firstname, event.lastname, event.email, event.password);
//     }
//   }

//   Stream<LoginState> registerSuccess(String? firstname, String? lasttname,
//       String? email, String? password) async* {
//     yield LoginLoading();
//     final dataResponse =
//         await user.userLogin(password: password, contact: email);
//     if (dataResponse.data1) {
//       yield LoginSuccess();
//     } else {
//       yield LoginFailure();
//     }
//   }
// }
