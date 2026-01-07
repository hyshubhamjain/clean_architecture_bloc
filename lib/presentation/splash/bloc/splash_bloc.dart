import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/usecase/user_information/is_user_authenticated_use_case.dart';

part 'splash_state.dart';
part 'splash_event.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final IsUserAuthenticatedUseCase isUserAuthenticatedUseCase;

  SplashBloc(this.isUserAuthenticatedUseCase) : super(SplashState.initial()) {
    on<SplashEvent>((event, emit) async {
      await event.map(
        checkAuthentication: (e) async {
          final result = await isUserAuthenticatedUseCase.execute();
          result.fold(
            (failure) {
              emit(SplashState.unauthenticated());
            },
            (isAuthenticated) {
              if (isAuthenticated) {
                emit(SplashState.authenticated());
              } else {
                emit(SplashState.unauthenticated());
              }
            },
          );
        },
      );
    });
  }
}
