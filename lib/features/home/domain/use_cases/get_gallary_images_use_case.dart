import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/home/data/models/gallary_model.dart';
import 'package:fursan_travel_app/features/home/domain/repositories/repository.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

class HomeImagesUseCase {
  final HomeRepository _repository;
  const HomeImagesUseCase(this._repository);

  Future<Either<Failure, GallaryModel>> call() async {
    final result = await _repository.getGallaryData();
    return result;
  }
}
