import 'package:bloc/bloc.dart';
import 'package:fursan_travel_app/features/contact_us/data/models/contact_us_model.dart';
import 'package:fursan_travel_app/features/contact_us/domain/use_cases/send_contact_us_form_use_case.dart';
import 'package:meta/meta.dart';

part 'contact_us_state.dart';

class ContactUsCubit extends Cubit<ContactUsState> {
  final SendContactUsFormUseCase _useCase;
  ContactUsCubit(this._useCase) : super(ContactUsLoading());

  Future sendContactUsForm({required Map<String, dynamic> params}) async {
    final result = await _useCase.call(params: params);
    return result.fold((f) => emit(ContactUsFailure()),
        (contactUsModel) => emit(ContactUsSuccess(contactUsModel)));
  }
}
