part of 'make_visa_reservation_cubit.dart';

@immutable
sealed class MakeVisaReservationState {}

final class MakeVisaReservationInit extends MakeVisaReservationState {}

final class MakeVisaReservationLoading extends MakeVisaReservationState {}

final class MakeVisaReservationSuccess extends MakeVisaReservationState {
  final VisaReservationModel visaReservationModel;
  MakeVisaReservationSuccess(this.visaReservationModel);
}

final class MakeVisaReservationFailure extends MakeVisaReservationState {}
