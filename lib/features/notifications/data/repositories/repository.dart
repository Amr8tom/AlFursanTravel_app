import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/notifications/data/data_sources/local_data_sources.dart';
import 'package:fursan_travel_app/features/notifications/data/models/notification_model.dart';
import 'package:fursan_travel_app/utils/connection/checkNetwork.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';
import '../../domain/repositories/repository.dart';
import '../data_sources/remote_data_sources.dart';

class NotificationRepositoryImp implements NotificationRepository {
  final NotificationRemoteDataSources _remote;
  final NotificationLocalDataSources _local;
  final NetworkInfo _networkInfo;
  const NotificationRepositoryImp(this._remote, this._local, this._networkInfo);

  @override
  Future<Either<Failure, NotificationModel>> getNotifications() async {
    if (await _networkInfo.isConnected) {
      try {
        final model = await _remote.getNotificationData();
        return right(model);
      } on ServerFailure {
        return Left(ServerFailure(
            message: "============== server Failure ===================="));
      }
    } else {
      try {
        final model = await _local.getNotificationData();
        return right(model);
      } on CacheFailure {
        return left(CacheFailure());
      }
    }
  }
}
