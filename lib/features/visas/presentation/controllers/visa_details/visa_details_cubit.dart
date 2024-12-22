import 'package:bloc/bloc.dart';
import 'package:fursan_travel_app/features/visas/data/model/visa_details_model.dart';
import 'package:fursan_travel_app/features/visas/domain/use_cases/get_visa_detail_use_case.dart';
import 'package:meta/meta.dart';

part 'visa_details_state.dart';

class VisaDetailsCubit extends Cubit<VisaDetailsState> {
  final GetVisaDetailUseCase _getVisaDetailUseCase;
  VisaDetailsCubit(this._getVisaDetailUseCase) : super(VisaDetailsLoading());
  Future getVisaDetails({required String slugId}) async {
    final result = await _getVisaDetailUseCase.call(params: slugId);
    return result.fold((f) => emit(VisaDetailsFailure()),
        (visaDetailsModel) => emit(VisaDetailsSuccess(visaDetailsModel)));
  }
}
