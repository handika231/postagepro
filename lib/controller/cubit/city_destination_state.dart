part of 'city_destination_cubit.dart';

sealed class CityDestinationState extends Equatable {
  const CityDestinationState();

  @override
  List<Object> get props => [];
}

final class CityDestinationInitial extends CityDestinationState {}

class CityDestinationLoading extends CityDestinationState {}

class CityDestinationLoaded extends CityDestinationState {
  final List<CityModel> cityDestination;

  const CityDestinationLoaded(this.cityDestination);
}

class CityDestinationError extends CityDestinationState {
  final String message;

  const CityDestinationError(this.message);
}
