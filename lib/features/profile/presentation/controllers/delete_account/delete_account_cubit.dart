import 'package:bloc/bloc.dart';
import 'package:fursan_travel_app/features/profile/data/models/delete_account_model.dart';
import 'package:fursan_travel_app/features/profile/domain/use_cases/delete_account_use_case.dart';
import 'package:meta/meta.dart';
part 'delete_account_state.dart';

class DeleteAccountCubit extends Cubit<DeleteAccountState> {
  final DeleteAccountUseCase _deleteAccountUseCase;

  DeleteAccountCubit(this._deleteAccountUseCase)
      : super(DeleteAccountInitial());

  Future delteAccount() async {
    final result = await _deleteAccountUseCase.call();
    return result.fold((f) => emit(DeleteAccountFailure()),
        (model) => emit(DeleteAccountSuccess(model)));
  }
}
