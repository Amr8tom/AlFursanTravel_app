part of 'gallary_cubit.dart';

@immutable
sealed class GallaryState {}

final class GallaryInitial extends GallaryState {}

final class GallaryLoading extends GallaryState {}

final class GallarySuccess extends GallaryState {
  final GallaryModel gallaryModel;
  GallarySuccess(this.gallaryModel);
}

final class GallaryFailure extends GallaryState {}
