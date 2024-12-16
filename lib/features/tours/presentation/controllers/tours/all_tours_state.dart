part of 'all_tours_cubit.dart';

@immutable
sealed class AllToursState {}

final class AllToursLoading extends AllToursState {}

final class AllToursSuccess extends AllToursState {
  final AllToursModel allToursModel;
  AllToursSuccess({required this.allToursModel});
}

final class AllToursFailure extends AllToursState {}
