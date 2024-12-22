import 'package:bloc/bloc.dart';
import 'package:fursan_travel_app/features/tours/data/model/tour_details_model.dart';
import 'package:fursan_travel_app/features/tours/domain/use_cases/get_tour_details_use_case.dart';
import 'package:meta/meta.dart';

part 'tour_details_state.dart';

class TourDetailsCubit extends Cubit<TourDetailsState> {
  final GetTourDetailsUseCase _getTourDetailsUseCase;
  TourDetailsCubit(this._getTourDetailsUseCase) : super(TourDetailsLoading());

  Future getTourDetails({required String slugID}) async {
    final result = await _getTourDetailsUseCase.call(params: slugID);
    return result.fold((l) => emit(TourDetailsFailure()),
        (tourDetailsModel) => emit(TourDetailsSuccess(tourDetailsModel)));
  }
}
