import 'package:bloc/bloc.dart';
import 'package:fursan_travel_app/features/tours/data/model/reservation_tour_model.dart';
import 'package:fursan_travel_app/features/tours/domain/use_cases/make_reservation_use_case.dart';
import 'package:meta/meta.dart';

part 'make_tour_reservation_state.dart';

class MakeTourReservationCubit extends Cubit<MakeTourReservationState> {
  final MakeReservationUseCase _makeReservationUseCase;
   MakeTourReservationCubit(this._makeReservationUseCase)
      : super(MakeTourReservationLoading());
  Future ReserveTour({required Map<String, dynamic> params}) async {
    final result = await _makeReservationUseCase.call(params: params);
    return result.fold(
        (f) => emit(MakeTourReservationFailure()),
        (reservationModel) => emit(
            MakeTourReservationSuccess(reservationModel: reservationModel)));
  }
}
