import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jainebook/domain/usecase/user_information/user_logout_use_case.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final UserLogoutUseCase useCase;
  DashboardBloc(this.useCase) : super(const DashboardState.initial()) {
    on<_LogoutEvent>((event, emit) async {
      emit(const DashboardState.loading());
      try {
        var data = await useCase.execute();
        data.fold(
          (failure) => emit(DashboardState.error(failure.message)),
          (success) => emit(const DashboardState.loggedOut()),
        );
      } catch (e) {
        emit(DashboardState.error(e.toString()));
      }
    });

    on<_LoadDataEvent>((event, emit) async {
      emit(const DashboardState.loading());
      try {
        // Simulate data fetching
        await Future.delayed(const Duration(seconds: 2));
        final items = List<String>.generate(10, (index) => 'Item $index');
        emit(DashboardState.loaded(items));
      } catch (e) {
        emit(DashboardState.error(e.toString()));
      }
    });

    on<_RefreshEvent>((event, emit) async {
      emit(const DashboardState.loading());
      try {
        // Simulate data refreshing
        await Future.delayed(const Duration(seconds: 1));
        final items = List<String>.generate(
          10,
          (index) => 'Item $index (refreshed)',
        );
        emit(DashboardState.loaded(items));
      } catch (e) {
        emit(DashboardState.error(e.toString()));
      }
    });

    on<_OpenDetailsEvent>((event, emit) {
      // Handle opening details logic here
    });
  }
}
