part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class LoginEvent extends HomeEvent {
  final String username;
  final String password;

  const LoginEvent({required this.username, required this.password});

  @override
  List<Object?> get props => [username, password];
}

class RegisterServiceEvent extends HomeEvent {
  @override
  List<Object?> get props => [];

}

class RegisterAccountEvent extends HomeEvent {
  final String username;
  final String password;

  const RegisterAccountEvent({required this.username, required this.password});

  @override
  List<Object?> get props => [username, password];
}