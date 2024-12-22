import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:fursan_travel_app/features/visas/data/model/visa_reservation_model.dart';
import 'package:fursan_travel_app/features/visas/domain/use_cases/make_visa_reservation_use_case.dart';
import 'package:meta/meta.dart';

part 'make_visa_reservation_state.dart';

class MakeVisaReservationCubit extends Cubit<MakeVisaReservationState> {
  final MakeVisaReservationUseCase _makeVisaReservationUseCase;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController eMailController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController notesController = TextEditingController();
  final TextEditingController visaIdController = TextEditingController();
  final TextEditingController filesController = TextEditingController();

  MakeVisaReservationCubit(this._makeVisaReservationUseCase)
      : super(MakeVisaReservationInit());
  Future makeVisaReservation({required String visaID}) async {
    emit(MakeVisaReservationLoading());
    final result = await _makeVisaReservationUseCase.call(params: {
      "sender_name": firstNameController.text,
      "sender_last_name": lastNameController.text,
      "sender_phone_number": phoneController.text,
      "sender_email_address": eMailController.text,
      "country": countryController.text,
      "sender_address": addressController.text,
      "notes": notesController.text,
      "visa_id": visaID,
      "files": filesController.text,
    });
    return result.fold(
        (l) => emit(MakeVisaReservationFailure()),
        (visaReservationModel) =>
            emit(MakeVisaReservationSuccess(visaReservationModel)));
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
