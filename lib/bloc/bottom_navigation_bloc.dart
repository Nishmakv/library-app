import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationBloc extends Bloc<LoginStateEvent, LoginState> {
  BottomNavigationBloc() : super(const LoginStateInitial());
  
  @override
  Stream<LoginState> mapEventToState(LoginStateEvent event
  ) async* {
    if (event is LoginProcess) {
      yield* tabIndexChange(event.username,event.password);
    }
    
  }

  Stream<LoginState> tabIndexChange(bool? userlogin,bool? passlogin) async* {
    yield LoginStateLoading();
    if (userlogin == true && passlogin==true) {
      yield LoginStateSuccess();
    } else {
      yield LoginStateFailure();
    }
  }
}
