import 'package:bloc/bloc.dart';
import 'package:fursan_travel_app/features/tours/data/model/all_tours_model.dart';
import 'package:fursan_travel_app/features/tours/domain/use_cases/get_all_tour_use_case.dart';
import 'package:meta/meta.dart';

part 'all_tours_state.dart';

class AllToursCubit extends Cubit<AllToursState> {
  final GetAllTourUseCase _getAllTourUseCase;
  AllToursCubit(this._getAllTourUseCase) : super(AllToursLoading()){
    getAllTours();
  }

  Future getAllTours() async {
    final result = await _getAllTourUseCase.call();
    return result.fold((f) => emit(AllToursFailure()),
        (allToursModel) => emit(AllToursSuccess(allToursModel: allToursModel)));
  }
}
