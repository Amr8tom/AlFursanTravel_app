import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:fursan_travel_app/features/authentication/domain/repositories/repository.dart';
import 'package:meta/meta.dart';

import '../../../data/models/user_sgin_up_model.dart';

part 'sing_up_state.dart';

class SingUpCubit extends Cubit<SingUpState> {
  final AuthenticationRepository _repository;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController eMailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  SingUpCubit(this._repository) : super(SingUpInitial());

  Future sginUp() async {
    emit(SingUpLoading());
    final result = await _repository.SignUp(params: {
      /// Todo: dont forget to use the data from the back end here
      "first_name": firstNameController.text,
      "last_name": lastNameController.text,
      "email": eMailController.text,
      "password": passwordController.text,
    });
    return result.fold(
        (f) => emit(SingUpFailure()), (model) => SingUpSuccess(model));
  }

  @override
  Future<void> close() {
    firstNameController.dispose();
    lastNameController.dispose();
    eMailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
