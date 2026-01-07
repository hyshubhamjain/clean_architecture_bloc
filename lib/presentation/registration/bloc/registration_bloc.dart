import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecase/use_case.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final RegistrationUseCase registrationUseCase;

  RegistrationBloc(this.registrationUseCase)
    : super(RegistrationState.initial()) {
    on<RegistrationEvent>((event, emit) async {
      await event.map(
        registerUser: (e) async {
          emit(RegistrationState.loading());
          final result = await registrationUseCase.execute(
            RegistrationUseCaseInput(
              e.email,
              e.password,
              e.name,
              e.phoneNumber,
            ),
          );
          result.fold(
            (failure) {
              emit(RegistrationState.error(failure.message));
            },
            (userModel) {
              emit(RegistrationState.success("Registration Successful"));
            },
          );
        },
      );
    });
  }
}
