part of 'login_bloc.dart';

@freezed
sealed class LoginEvent with _$LoginEvent {
  factory LoginEvent.loginUser(String email, String password) = _LoginUser;
  factory LoginEvent.navigateToSignUp() = _NavigateToSignUp;
  factory LoginEvent.navigateToForgetPassword() = _NavigateToForgetPassword;
}
