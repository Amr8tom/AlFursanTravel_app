import 'package:bloc/bloc.dart';
import 'package:fursan_travel_app/features/visas/data/model/visa_reservation_model.dart';
import 'package:fursan_travel_app/features/visas/domain/use_cases/make_visa_reservation_use_case.dart';
import 'package:meta/meta.dart';

part 'make_visa_reservation_state.dart';

class MakeVisaReservationCubit extends Cubit<MakeVisaReservationState> {
  final MakeVisaReservationUseCase _makeVisaReservationUseCase;
  MakeVisaReservationCubit(this._makeVisaReservationUseCase)
      : super(MakeVisaReservationLoading());
  Future makeVisaReservation({required Map<String, dynamic> params}) async {
    final result = await _makeVisaReservationUseCase.call(params: params);
    return result.fold(
        (l) => emit(MakeVisaReservationFailure()),
        (visaReservationModel) =>
            emit(MakeVisaReservationSuccess(visaReservationModel)));
  }
}
