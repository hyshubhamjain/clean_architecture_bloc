import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecase/use_case.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;

  LoginBloc(this.loginUseCase) : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.map(
        loginUser: (e) async {
          emit(LoginState.loading());
          final result = await loginUseCase.execute(
            LoginUseCaseInput(e.email, e.password),
          );
          result.fold(
            (failure) {
              emit(LoginState.error(failure.message));
            },
            (userModel) {
              emit(LoginState.success("Login Successful"));
            },
          );
        },
        navigateToSignUp: (e) async {
          emit(LoginState.navigateToSingUp());
        },
        navigateToForgetPassword: (e) async {
          emit(LoginState.navigateToForgetPassword());
        },
      );
    });
  }
}
