import 'package:fursan_travel_app/features/home/data/models/gallary_model.dart';
import 'package:fursan_travel_app/utils/dio/dio_helper.dart';
import '../../../../utils/constants/api_constants.dart';

abstract class homeRemoteDataSource {
  Future<GallaryModel> getGalaryData();
}

class homeRemoteDataSourceImp implements homeRemoteDataSource {
  final DioHelper _dio;
  const homeRemoteDataSourceImp(this._dio);

  @override
  Future<GallaryModel> getGalaryData() async {
    final response = await _dio.getData(URL: URL.gallary);
    return GallaryModel.fromJson(response);
  }
}
