import "package:dartz/dartz.dart";
import "package:fursan_travel_app/features/tours/data/model/reservation_tour_model.dart";
import "package:fursan_travel_app/features/tours/data/model/tour_details_model.dart";
import "../../../../utils/error/failure.dart";
import "../../data/model/all_tours_model.dart";

abstract class ToursRepository {
  Future<Either<Failure, AllToursModel>> getAllTours();
  Future<Either<Failure, TourDetailsModel>> getTourDetails(
      {required String params});

  /// todo: change to VisaReservationModel to TourReservationModel
  Future<Either<Failure, ReservationTourModel>> makeTourReservation(
      {required Map<String, dynamic> params});
}
