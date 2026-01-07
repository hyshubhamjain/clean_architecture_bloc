part of 'forget_password_bloc.dart';

@freezed
class ForgetPasswordState with _$ForgetPasswordState {
  factory ForgetPasswordState.initial() = _InitialState;
  factory ForgetPasswordState.loading() = _LoadingState;
  factory ForgetPasswordState.success(String message) = _SuccessState;
  factory ForgetPasswordState.error(String message) = _ErrorState;
}
