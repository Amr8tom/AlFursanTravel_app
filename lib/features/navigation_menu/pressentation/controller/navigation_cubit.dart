import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:fursan_travel_app/utils/local_storage/cach_keys.dart';
import 'package:fursan_travel_app/utils/local_storage/cache_helper.dart';
import 'package:meta/meta.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationInitial());
  int indx = 0;
  late String storedLang;
  Locale currentLang = Locale("ar");
  String? changedLang = PrefService.getString(key: CacheKeys.lang);
  Future<void> init() async {
    emit(NavigationLoading());
    storedLang = (changedLang == '' ? "ar" : changedLang)!;
    currentLang = Locale(storedLang);
    emit(NavigationSuccess());
  }

  void chnageIndx(int index) {
    emit(NavigationLoading());
    indx = index;
    emit(NavigationSuccess());
  }

  void chnageLange(String lang) {
    emit(NavigationLoading());
    print("object");
    currentLang = Locale(lang);
    PrefService.putString(key: CacheKeys.lang, value: lang);
    print(currentLang);

    emit(NavigationSuccess());
  }
}
