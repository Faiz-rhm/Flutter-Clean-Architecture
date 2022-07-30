import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_biolerplate/presentations/login/model/model.dart';
import 'package:formz/formz.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState>{
  LoginBloc() : super(const LoginState());


  void _onUsernameChanged(
    LoginUserNameChanged event,
    Emitter<LoginState> emit,
  ) {
     final username = Username.dirty(event.userName);
     emit(state.copyWith(
      username: username,
      status: Formz.validate([username, state.password]),
     ),);
  }

  void _onPasswordChange(
    LoginPasswordChanged event,
    Emitter<LoginState> emit,
  ){
    final password = Password.dirty(event.password);
    emit(state.copyWith(
      password: password,
      status: Formz.validate([password, state.username]),

    ),);
  }

  void _onSubmit(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) {
    if(state.status.isValidated){
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      try {

      } catch (_) {
        emit(state.copyWith(status: FormzStatus.submissionFailure));
      }
    }

  }

}
