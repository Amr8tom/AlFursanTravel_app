import 'package:bloc/bloc.dart';
import 'package:fursan_travel_app/features/search/domain/use_cases/search_for_item_use_case.dart';
import 'package:meta/meta.dart';

import '../../../data/model/Searched_item_list_model.dart';
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
