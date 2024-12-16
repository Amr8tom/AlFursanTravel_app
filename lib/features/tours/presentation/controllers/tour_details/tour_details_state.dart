part of 'tour_details_cubit.dart';

@immutable
sealed class TourDetailsState {}

final class TourDetailsLoading extends TourDetailsState {}

final class TourDetailsSuccess extends TourDetailsState {
  final TourDetailsModel tourDetailsModel;
  TourDetailsSuccess(this.tourDetailsModel);
}

final class TourDetailsFailure extends TourDetailsState {}
