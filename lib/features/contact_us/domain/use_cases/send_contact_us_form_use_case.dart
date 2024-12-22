import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/contact_us/data/models/contact_us_model.dart';
import 'package:fursan_travel_app/features/contact_us/domain/repositories/repository.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

class SendContactUsFormUseCase {
  final ContactUsRepository _repository;
  const SendContactUsFormUseCase(this._repository);

  Future<Either<Failure, ContactUsModel>> call(
      {required Map<String, dynamic> params}) {
    return _repository.sendContactUsForm(params: params);
  }
}
