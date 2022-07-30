part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState({
    this.isLoading = false,
    this.status = FormzStatus.pure,
    this.username = const Username.pure(),
    this.password = const Password.pure(),
  });

  final bool isLoading;
  final FormzStatus status;
  final Username username;
  final Password password;

  LoginState copyWith({
    bool? isLoading,
    FormzStatus? status,
    Username? username,
    Password? password,
  }) {
    return LoginState(
      isLoading: isLoading ?? this.isLoading,
      status: status ?? this.status,
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  @override
  List<Object> get props => [isLoading, status, username, password];
}
