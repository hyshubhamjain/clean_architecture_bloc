part of 'forget_password_bloc.dart';

@freezed
sealed class ForgetPasswordEvent with _$ForgetPasswordEvent {
  factory ForgetPasswordEvent.sendResetLink(String email) = _SendResetLink;
}
