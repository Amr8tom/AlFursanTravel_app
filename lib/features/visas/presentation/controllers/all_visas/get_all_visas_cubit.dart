import 'package:bloc/bloc.dart';
import 'package:fursan_travel_app/features/visas/data/model/all_visas_model.dart';
import 'package:fursan_travel_app/features/visas/domain/use_cases/get_all_visas_use_case.dart';
import 'package:meta/meta.dart';

part 'get_all_visas_state.dart';

class GetAllVisasCubit extends Cubit<GetAllVisasState> {
  final GetAllVisasUsecase _getAllVisasUsecase;
  GetAllVisasCubit(this._getAllVisasUsecase) : super(GetAllVisasLoading());

  Future getAllVisas() async {
    final result = await _getAllVisasUsecase.call();
    return result.fold((f) => emit(GetAllVisasFailure()),
        (allVisasMode) => emit(GetAllVisasSuccess(allVisasMode)));
  }
}
