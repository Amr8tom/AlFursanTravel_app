import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fursan_travel_app/features/tours/data/model/reservation_tour_model.dart';
import 'package:fursan_travel_app/features/tours/domain/use_cases/make_reservation_use_case.dart';
import 'package:meta/meta.dart';

part 'make_tour_reservation_state.dart';

class MakeTourReservationCubit extends Cubit<MakeTourReservationState> {
  final MakeReservationUseCase _makeReservationUseCase;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController eMailController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController notesController = TextEditingController();
  final TextEditingController filesController = TextEditingController();
  MakeTourReservationCubit(this._makeReservationUseCase)
      : super(MakeTourReservationLoading());

  Future makeTourReservation() async {
    final result = await _makeReservationUseCase.call(params: {
      "sender_name": firstNameController.text,
      "sender_last_name": lastNameController.text,
      "sender_phone_number": phoneController.text,
      "sender_email_address": eMailController.text,
      "country": countryController.text,
      "sender_address": addressController.text,
      "notes": notesController.text,
      "files": filesController.text,
    });
    return result.fold(
        (f) => emit(MakeTourReservationFailure()),
        (reservationModel) => emit(
            MakeTourReservationSuccess(reservationModel: reservationModel)));
  }

  @override
  Future<void> close() {
    firstNameController.dispose();
    lastNameController.dispose();
    phoneController.dispose();
    eMailController.dispose();
    countryController.dispose();
    addressController.dispose();
    notesController.dispose();
    filesController.dispose();
    return super.close();
  }
}
