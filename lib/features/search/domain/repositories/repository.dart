import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

import '../../data/model/Searched_item_list_model.dart';


abstract class SearchRepository {
  Future<Either<Failure, AllSearchItemsModel>> searchForItem(
      {required String query});
}
