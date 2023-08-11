part of 'check_cost_cubit.dart';

sealed class CheckCostState extends Equatable {
  const CheckCostState();

  @override
  List<Object> get props => [];
}

final class CheckCostInitial extends CheckCostState {}

class CheckCostLoading extends CheckCostState {
  const CheckCostLoading({
    required this.isLoading,
  });

  final bool isLoading;

  @override
  List<Object> get props => [isLoading];
}

class CheckCostLoaded extends CheckCostState {
  const CheckCostLoaded(this.cost);

  final Map<String, dynamic> cost;

  @override
  List<Object> get props => [cost];
}

class CheckCostError extends CheckCostState {
  const CheckCostError(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
