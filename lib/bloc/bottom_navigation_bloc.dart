import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(const BottomNavigationInitial());
  @override
  Stream<BottomNavigationState> mapEventToState(
    BottomNavigationEvent event,
  ) async* {
    if (event is TabIndexChangeEvent) {
      yield* tabIndexChange(event.changeIndex);
    }
  }
  Stream<BottomNavigationState>tabIndexChange(bool? changeIndex)async*{
    yield BottomNavigationLoading();
    if(changeIndex==true){
      yield BottomNavigationSuccess();
    }
    else{
      yield BottomNavigationFailure();
    }

  }
}
