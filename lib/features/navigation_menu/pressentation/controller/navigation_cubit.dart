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
  late Locale currentLang;
  String? changedLang = PrefService.getString(key: CacheKeys.lang);
  Future<void> init() async {
    storedLang = (changedLang == '' ? "ar" : changedLang)!;
    currentLang = Locale(storedLang);
  }

  void chnageIndx(int index) {
    emit(NavigationLoading());
    indx = index;
    emit(NavigationSuccess());
  }

  void togggleLang() {
    emit(NavigationLoading());
    String newLang = (storedLang == "en") ? "ar" : "en";
    // PrefService.putString(key: CacheKeys.lang, value: newLang);
    currentLang = Locale(newLang);
    emit(NavigationSuccess());
  }
}
