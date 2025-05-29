part of 'travel_dashboard_bloc.dart';

class TravelDashboardState extends Equatable {
  final TravelDashboardModel? travelDashboardModel;
  final bool isLoading;

  TravelDashboardState({this.travelDashboardModel, this.isLoading = false});

  @override
  List<Object?> get props => [travelDashboardModel, isLoading];

  TravelDashboardState copyWith({
    TravelDashboardModel? travelDashboardModel,
    bool? isLoading,
  }) {
    return TravelDashboardState(
      travelDashboardModel: travelDashboardModel ?? this.travelDashboardModel,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
