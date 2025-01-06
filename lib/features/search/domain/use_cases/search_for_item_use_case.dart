import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/search/domain/repositories/repository.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

import '../../data/model/Searched_item_list_model.dart';


class SearchForItemUseCase {
  final SearchRepository _repository;
  const SearchForItemUseCase(this._repository);

  Future<Either<Failure, AllSearchItemsModel>> call(
      {required String query}) async {
    return _repository.searchForItem(query: query);
  }
}
