import "package:dartz/dartz.dart";
import "package:fursan_travel_app/features/tours/data/model/all_visas_model.dart";
import "package:fursan_travel_app/features/tours/data/model/tour_details_model.dart";
import "package:fursan_travel_app/features/tours/data/model/visa_ditails_model.dart";

import "../../../../utils/error/failure.dart";
import "../../data/model/all_tours_model.dart";

abstract class ToursRepository {
  Future<Either<Failure, AllToursModel>> getAllTours();
  // Future<Either<Failure, AllVisasModel>> getAllVisas();
  Future<Either<Failure, TourDetailsModel>> getTourDetails();
  // Future<Either<Failure, VisaDitailsModel>> getVisaDetails();
}
