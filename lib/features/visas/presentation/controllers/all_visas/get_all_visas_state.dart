part of 'get_all_visas_cubit.dart';

@immutable
sealed class GetAllVisasState {}

final class GetAllVisasLoading extends GetAllVisasState {}

final class GetAllVisasSuccess extends GetAllVisasState {
  final AllVisasModel allVisasMode;
  GetAllVisasSuccess(this.allVisasMode);
}

final class GetAllVisasFailure extends GetAllVisasState {}
