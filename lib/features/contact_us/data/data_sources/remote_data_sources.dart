import 'package:fursan_travel_app/features/contact_us/data/models/contact_us_model.dart';
import 'package:fursan_travel_app/utils/constants/api_constants.dart';
import 'package:fursan_travel_app/utils/dio/dio_helper.dart';

abstract class ContactUsRemoteDataSources {
  Future<ContactUsModel> sendContactUsForm(
      {required Map<String, dynamic> params});
}

class ContactUsRemoteDataSourcesImp implements ContactUsRemoteDataSources {
  final DioHelper dio;
  const ContactUsRemoteDataSourcesImp(this.dio);
  @override
  Future<ContactUsModel> sendContactUsForm(
      {required Map<String, dynamic> params}) async {
    final response = await dio.postData(URL: URL.contactUs, body: params);
    return ContactUsModel.fromJson(response);
  }
}
