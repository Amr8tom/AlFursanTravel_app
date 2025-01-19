import 'package:bloc/bloc.dart';
import 'package:fursan_travel_app/features/profile/data/models/profile_data_model.dart';
import 'package:fursan_travel_app/features/profile/domain/use_cases/get_profile_data_use_case.dart';
import 'package:meta/meta.dart';

part 'get_profile_data_state.dart';

class GetProfileDataCubit extends Cubit<GetProfileDataState> {
  final GetProfileDataUseCase _getProfileDataUseCase;
  GetProfileDataCubit(this._getProfileDataUseCase)
      : super(GetProfileDataLoading()){
    getProfileData();
  }

  Future getProfileData() async {
    final result = await _getProfileDataUseCase.call();
    return result.fold(
        (l) => emit(GetProfileDataFailure()),
        (profileModel) =>
            emit(GetProfileDataSuccess(profileDataModel: profileModel)));
  }
}
