part of 'province_cubit.dart';

sealed class ProvinceState extends Equatable {
  const ProvinceState();

  @override
  List<Object> get props => [];
}

final class ProvinceInitial extends ProvinceState {}

class ProvinceLoading extends ProvinceState {}

class ProvinceLoaded extends ProvinceState {
  final List<ProvinceModel> province;

  ProvinceLoaded({required this.province});
}

class ProvinceError extends ProvinceState {
  final String message;

  ProvinceError({required this.message});
}
