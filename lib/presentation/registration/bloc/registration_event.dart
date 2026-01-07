part of 'registration_bloc.dart';

@freezed
sealed class RegistrationEvent with _$RegistrationEvent {
  factory RegistrationEvent.registerUser(
    String email,
    String password,
    String name,
    String phoneNumber,
  ) = _RegisterUser;
}
