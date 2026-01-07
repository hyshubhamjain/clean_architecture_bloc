part of 'splash_bloc.dart';

@freezed
sealed class SplashEvent with _$SplashEvent {
  factory SplashEvent.checkAuthentication() = _CheckAuthentication;
}
