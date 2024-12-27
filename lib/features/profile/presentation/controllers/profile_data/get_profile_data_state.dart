part of 'get_profile_data_cubit.dart';

@immutable
sealed class GetProfileDataState {}

final class GetProfileDataLoading extends GetProfileDataState {}

final class GetProfileDataSuccess extends GetProfileDataState {
  final ProfileDataModel profileDataModel;
  GetProfileDataSuccess({required this.profileDataModel});
}

final class GetProfileDataFailure extends GetProfileDataState {}
