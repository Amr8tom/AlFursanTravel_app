part of 'make_tour_reservation_cubit.dart';

@immutable
sealed class MakeTourReservationState {}

final class MakeTourReservationLoading extends MakeTourReservationState {}

final class MakeTourReservationSuccess extends MakeTourReservationState {
  final ReservationTourModel reservationModel;
  MakeTourReservationSuccess({required this.reservationModel});
}

final class MakeTourReservationFailure extends MakeTourReservationState {}
