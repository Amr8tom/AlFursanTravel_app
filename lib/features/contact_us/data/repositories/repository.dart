import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/contact_us/data/data_sources/remote_data_sources.dart';
import 'package:fursan_travel_app/features/contact_us/data/models/contact_us_model.dart';
import 'package:fursan_travel_app/features/contact_us/domain/repositories/repository.dart';
import 'package:fursan_travel_app/utils/connection/checkNetwork.dart';

import '../../../../utils/error/failure.dart';

class ContactUsRepositoryImp implements ContactUsRepository {
  final NetworkInfo NetWorkInfo;
  final ContactUsRemoteDataSources remote;
  const ContactUsRepositoryImp(
      {required this.NetWorkInfo, required this.remote});

  @override
  Future<Either<Failure, ContactUsModel>> sendContactUsForm(
      {required Map<String, dynamic> params}) async {
    if (await NetWorkInfo.isConnected) {
      try {
        final response = await remote.sendContactUsForm(params: params);
        return right(ContactUsModel.fromJson(response));
      } on ServerFailure {
        return left(ServerFailure(
            message: "============ Server Failure =============="));
      }
    } else {
      return left(CacheFailure());
    }
  }
}
