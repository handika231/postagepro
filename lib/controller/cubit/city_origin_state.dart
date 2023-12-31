part of 'city_origin_cubit.dart';

sealed class CityOriginState extends Equatable {
  const CityOriginState();

  @override
  List<Object> get props => [];
}

final class CityOriginInitial extends CityOriginState {}

class CityOriginLoading extends CityOriginState {}

class CityOriginLoaded extends CityOriginState {
  final List<CityModel> cityOrigin;

  CityOriginLoaded(this.cityOrigin);
}

class CityOriginError extends CityOriginState {
  final String message;

  CityOriginError(this.message);
}
