import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/home/data/models/gallary_model.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

abstract class HomeRepository {
  Future<Either<Failure, GallaryModel>> getGallaryData();
}
