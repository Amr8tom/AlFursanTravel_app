import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/search/data/model/searchedItemListModel.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

abstract class SearchRepository {
  Future<Either<Failure, SearchedItemListModel>> searchForItem(
      {required String query});
}
