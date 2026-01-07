import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecase/use_case.dart';

part 'forget_password_event.dart';
part 'forget_password_state.dart';
part 'forget_password_bloc.freezed.dart';

class ForgetPasswordBloc
    extends Bloc<ForgetPasswordEvent, ForgetPasswordState> {
  final ForgetPasswordUseCase forgetPasswordUseCase;

  ForgetPasswordBloc(this.forgetPasswordUseCase)
    : super(ForgetPasswordState.initial()) {
    on<ForgetPasswordEvent>((event, emit) async {
      await event.map(
        sendResetLink: (e) async {
          emit(ForgetPasswordState.loading());
          final result = await forgetPasswordUseCase.execute(
            ForgetPasswordUseCaseInput(e.email),
          );
          result.fold(
            (failure) {
              emit(ForgetPasswordState.error(failure.message));
            },
            (message) {
              emit(ForgetPasswordState.success("Reset link sent successfully"));
            },
          );
        },
      );
    });
  }
}
