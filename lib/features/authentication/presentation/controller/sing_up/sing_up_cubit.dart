import 'package:bloc/bloc.dart';
import 'package:fursan_travel_app/features/authentication/domain/repositories/repository.dart';
import 'package:meta/meta.dart';

part 'sing_up_state.dart';

class SingUpCubit extends Cubit<SingUpState> {
  final AuthenticationRepository _repository;
  SingUpCubit(this._repository) : super(SingUpInitial());
}
