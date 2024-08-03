// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';

// part 'authe_event.dart';
// part 'authe_state.dart';

// class AutheBloc extends Bloc<AutheEvent, AutheState> {
//   AutheBloc() : super(AutheInitial()) {
//     on<AutheEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }
// }

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rid_board/model/handling_model.dart';
import 'package:rid_board/model/login_model.dart';
import 'package:rid_board/model/signup_model.dart';
import 'package:rid_board/service/auth_service.dart';

part 'authe_event.dart';
part 'authe_state.dart';

class AutheBloc extends Bloc<AutheEvent, AutheState> {
  AutheBloc() : super(AutheInitial()) {
    on<Register>((event, emit) async {
      print("AutheInitial;");
      emit(Loading());
      ResultModel result = await AuthSeviceImp().signUp(event.user);
      
      if (result is DataSuccess) {
        emit(SuccessToRegister());
      } else {
        emit(Failed(message: result.runtimeType.toString()));
      }
    });
    on<LogIn>((event, emit) async {
      // print("object");
      emit(Loading());
      ResultModel result = await AuthSeviceImp().logIn(event.user);
      if (result is DataSuccess) {
        emit(SuccessToRegister());
      } else {
        emit(Failed(message: result.runtimeType.toString()));
      }
    });
  }
}
