import 'package:fursan_travel_app/features/profile/data/models/delete_account_model.dart';
import 'package:fursan_travel_app/features/profile/data/models/profile_data_model.dart';
import 'package:fursan_travel_app/utils/constants/api_constants.dart';
import 'package:fursan_travel_app/utils/dio/dio_helper.dart';

import '../../../../utils/error/failure.dart';

abstract class ProfileRemoteDataSources {
  Future<ProfileDataModel> getProfileData();

  Future<DeleteAccountModel> deleteAccount();
}

class ProfileRemoteDataSourcesImp implements ProfileRemoteDataSources {
  final DioHelper _dio;

  const ProfileRemoteDataSourcesImp(this._dio);

  @override
  Future<ProfileDataModel> getProfileData() async {
 try{   final response = await _dio.getData(URL: URL.profile);
 return ProfileDataModel.fromJson(response);}on ServerFailure{
   throw ServerFailure(message: "Server Failure");

 }
  }

  @override
  Future<DeleteAccountModel> deleteAccount() async {
   try{ final response = await _dio.postData(URL: URL.deleteAccount);
   return DeleteAccountModel.fromJson(response);}
    on ServerFailure {
      throw ServerFailure(message: "Server Failure");
    }
  }
}
