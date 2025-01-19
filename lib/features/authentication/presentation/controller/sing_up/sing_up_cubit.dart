import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:fursan_travel_app/features/authentication/domain/repositories/repository.dart';
import 'package:meta/meta.dart';

import '../../../data/models/user_sgin_up_model.dart';
import '../../../domain/use_cases/sign_up_use_case.dart';

part 'sing_up_state.dart';

class SingUpCubit extends Cubit<SingUpState> {
  SignUpUseCase _useCase;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController eMailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  SingUpCubit(this._useCase) : super(SingUpInitial());

  Future<void> signUp() async {
    final result = await _useCase.call(params: {
      "first_name": firstNameController.text,
      "last_name": lastNameController.text,
      "email": eMailController.text,
      "password": passwordController.text,
    });
    return result.fold((f)=>emit(SingUpFailure()), (m)=>emit(SingUpSuccess(m)));
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
