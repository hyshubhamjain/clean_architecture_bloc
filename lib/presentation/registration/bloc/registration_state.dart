part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  factory RegistrationState.initial() = _InitialState;
  factory RegistrationState.loading() = _LoadingState;
  factory RegistrationState.success(String message) = _SuccessState;
  factory RegistrationState.error(String message) = _ErrorState;
}
