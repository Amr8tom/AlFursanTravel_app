part of 'visa_details_cubit.dart';

@immutable
sealed class VisaDetailsState {}

final class VisaDetailsLoading extends VisaDetailsState {}
final class VisaDetailsSuccess extends VisaDetailsState {
  final VisaDetailsModel visaDetailsModel;
VisaDetailsSuccess(this.visaDetailsModel);
}
final class VisaDetailsFailure extends VisaDetailsState {}
