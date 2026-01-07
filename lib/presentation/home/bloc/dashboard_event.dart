part of 'dashboard_bloc.dart';

@freezed
sealed class DashboardEvent with _$DashboardEvent {
  factory DashboardEvent.logout() = _LogoutEvent;
  factory DashboardEvent.loadData() = _LoadDataEvent;
  factory DashboardEvent.refresh() = _RefreshEvent;
  factory DashboardEvent.openDetails(int itemId) = _OpenDetailsEvent;
}
