part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginUserNameChanged extends LoginEvent{
  const LoginUserNameChanged(this.userName);

  final String userName;

  @override
  List<Object> get props => [userName];

}

class LoginPasswordChanged extends LoginEvent{
  const LoginPasswordChanged(this.password);

  final String password;

  @override
  List<Object> get props => [password];

}

class LoginSubmitted extends LoginEvent{
  const LoginSubmitted();
}
