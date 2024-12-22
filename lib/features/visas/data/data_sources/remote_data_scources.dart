import 'package:fursan_travel_app/features/visas/data/model/visa_reservation_model.dart';
import 'package:fursan_travel_app/utils/dio/dio_helper.dart';

import '../../../../utils/constants/api_constants.dart';
import '../model/all_visas_model.dart';
import '../model/visa_details_model.dart';

abstract class VisasRemoteDataSources {
  Future<AllVisasModel> getAllVisas();
  Future<VisaDetailsModel> getVisaDetails({required String params});
  Future<VisaReservationModel> makeVisaReservation(
      {required Map<String, dynamic> params});
}

class VisasRemoteDataSourcesImp implements VisasRemoteDataSources {
  DioHelper dio;
  VisasRemoteDataSourcesImp({required this.dio});

  @override
  Future<AllVisasModel> getAllVisas() async {
    final response = await dio.getData(URL: URL.allVisas);
    return AllVisasModel.fromJson(response);
  }

  @override
  Future<VisaDetailsModel> getVisaDetails({required String params}) async {
    final response = await dio.getData(URL: "${URL.visaDetails}$params");
    return VisaDetailsModel.fromJson(response);
  }

  @override
  Future<VisaReservationModel> makeVisaReservation(
      {required Map<String, dynamic> params}) async {
    final response = await dio.postData(URL: URL.visaReservation, body: params);
    return VisaReservationModel.fromJson(response);
  }
}
