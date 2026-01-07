part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  factory SplashState.initial() = _InitialState;
  factory SplashState.authenticated() = _AuthenticatedState;
  factory SplashState.unauthenticated() = _UnauthenticatedState;
}
