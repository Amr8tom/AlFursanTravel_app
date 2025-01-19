import 'package:bloc/bloc.dart';
import 'package:fursan_travel_app/features/home/data/models/gallary_model.dart';
import 'package:fursan_travel_app/features/home/domain/repositories/repository.dart';
import 'package:fursan_travel_app/features/home/domain/use_cases/get_gallary_images_use_case.dart';
import 'package:meta/meta.dart';

part 'gallary_state.dart';

class GallaryCubit extends Cubit<GallaryState> {
  final HomeImagesUseCase _homeImagesUseCase;
  GallaryCubit(this._homeImagesUseCase) : super(GallaryInitial()){
    getGalaryData();
  }

  Future getGalaryData() async {
    final result = await _homeImagesUseCase.call();
    return result.fold((f) => emit(GallaryFailure()),
        (GallaryDataModel) => emit(GallarySuccess(GallaryDataModel)));
  }
}
