part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState.initial() = _InitialState;
  factory LoginState.loading() = _LoadingState;
  factory LoginState.success(String message) = _SuccessState;
  factory LoginState.error(String message) = _ErrorState;
  factory LoginState.navigateToSingUp() = _NavigateToSignUpState;
  factory LoginState.navigateToForgetPassword() =
      _NavigateToForgetPasswordState;
}
