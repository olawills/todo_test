import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_test/backend/auth_repo.dart';
import 'package:todo_test/backend/basic_response.dart';
import 'package:todo_test/backend/login_payload.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository repository;

  AuthBloc(this.repository) : super(AuthInitial()) {
    on<LoginEvent>((event, emit) => _login(event, emit));
    // on<SignupEvent>((event, emit) => _signup(event, emit));
  }

  _login(LoginEvent event, emit) async {
    emit(LoginLoading());
    final payload =
        LoginPayload(username: event.username, password: event.password);
    log(payload.username);
    final response = await repository.login(payload);
    log('$response ');
    response.fold(
      (l) => emit(LoginError(apiResponse: l)),
      (r) => LoginSuccess(response: r),
    );
  }
}

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class SignupEvent extends AuthEvent {
  final String username, password, passwordConfirm;
  const SignupEvent({
    required this.username,
    required this.password,
    required this.passwordConfirm,
  });
}

class LoginEvent extends AuthEvent {
  final String username, password;
  const LoginEvent({required this.username, required this.password});
}

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class LoginLoading extends AuthState {}

class LoginSuccess extends AuthState {
  final BasicResponse response;
  const LoginSuccess({required this.response});
}

class LoginError extends AuthState {
  final Exception apiResponse;
  const LoginError({required this.apiResponse});
}
