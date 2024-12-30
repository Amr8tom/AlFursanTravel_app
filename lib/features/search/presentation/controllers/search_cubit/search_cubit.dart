import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/authentication/data/models/user_sgin_in_model.dart';
import 'package:fursan_travel_app/features/search/data/model/searchedItemListModel.dart';
import 'package:fursan_travel_app/features/search/domain/use_cases/search_for_item_use_case.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';
import 'package:meta/meta.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchForItemUseCase _searchForItemUseCase;
  SearchCubit(this._searchForItemUseCase) : super(SearchInitial());
  Future seach({required String query}) async {
    emit(SearchLoading());
    final result = await _searchForItemUseCase.call(query: query);
    return result.fold(
        (f) => emit(SearchFailure()), (model) => emit(SearchSuccess(model)));
  }
}
