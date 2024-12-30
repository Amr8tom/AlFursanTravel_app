import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:fursan_travel_app/features/contact_us/data/models/contact_us_model.dart';
import 'package:fursan_travel_app/features/contact_us/domain/use_cases/send_contact_us_form_use_case.dart';
import 'package:meta/meta.dart';

part 'contact_us_state.dart';

class ContactUsCubit extends Cubit<ContactUsState> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController eMailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  // final TextEditingController addressController = TextEditingController();

  final SendContactUsFormUseCase _useCase;
  ContactUsCubit(this._useCase) : super(ContactUsLoading());

  Future sendContactUsForm() async {
    final result = await _useCase.call(params: {
      "sender_name": nameController.text,
      "sender_email_address": eMailController.text,
      "sender_phone_number": phoneController.text,
      "sender_address": " ",
      "message": messageController.text,
    });
    return result.fold((f) => emit(ContactUsFailure()),
        (contactUsModel) => emit(ContactUsSuccess(contactUsModel)));
  }

  @override
  Future<void> close() {
    nameController.dispose();
    phoneController.dispose();
    eMailController.dispose();
    messageController.dispose();
    // addressController.dispose();
    return super.close();
  }
}
