import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/search/data/model/searchedItemListModel.dart';
import 'package:fursan_travel_app/features/search/domain/repositories/repository.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

class SearchForItemUseCase {
  final SearchRepository _repository;
  const SearchForItemUseCase(this._repository);

  Future<Either<Failure, SearchedItemListModel>> call(
      {required String query}) async {
    return _repository.searchForItem(query: query);
  }
}
