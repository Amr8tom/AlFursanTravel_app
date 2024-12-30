import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:fursan_travel_app/features/authentication/data/models/user_sgin_in_model.dart';
import 'package:fursan_travel_app/features/authentication/domain/repositories/repository.dart';
import 'package:meta/meta.dart';

part 'sing_up_state.dart';

class SingUpCubit extends Cubit<SingUpState> {
  final AuthenticationRepository _repository;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController eMailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  SingUpCubit(this._repository) : super(SingUpInitial());

  Future sginUp() async {
    final result = await _repository.SignUp(params: {
      /// Todo: dont forget to use the data from the back end here
      "param1": firstNameController.text,
      "param2": lastNameController.text,
      "param3": eMailController.text,
      "param4": phoneController.text,
    });
    return result.fold(
        (f) => emit(SingUpFailure()), (model) => SingUpSuccess(model));
  }

  @override
  Future<void> close() {
    firstNameController.dispose();
    lastNameController.dispose();
    eMailController.dispose();
    phoneController.dispose();

    return super.close();
  }
}
