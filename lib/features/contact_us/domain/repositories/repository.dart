import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/contact_us/data/models/contact_us_model.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

abstract class ContactUsRepository {
  Future<Either<Failure, ContactUsModel>> sendContactUsForm(
      {required Map<String, dynamic> params});
}
