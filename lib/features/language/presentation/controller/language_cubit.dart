import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../../utils/local_storage/cach_keys.dart';
import '../../../../utils/local_storage/cache_helper.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageLoading());
  late String storedLang;
  Locale currentLang = Locale("ar");
  String? changedLang = PrefService.getString(key: CacheKeys.lang);
  String ShowLand = "AR";
  Future<void> init() async {
    emit(LanguageLoading());
    storedLang = (changedLang == '' ? "ar" : changedLang)!;
    currentLang = Locale(storedLang);
    emit(LanguageSuccess());
  }

  void chnageLange(String lang) {
    emit(LanguageLoading());
    currentLang = Locale(lang);
    PrefService.putString(key: CacheKeys.lang, value: lang);
    print(currentLang);

    emit(LanguageSuccess());
  }

  void toggleLand() {
    emit(LanguageLoading());
    if (currentLang == Locale("en")) {
      currentLang = Locale("ar");
      ShowLand = "AR";
      PrefService.putString(key: CacheKeys.lang, value: "ar");
    } else {
      currentLang = Locale("en");
      ShowLand = "EN";
      PrefService.putString(key: CacheKeys.lang, value: "en");
    }
    print(currentLang);

    emit(LanguageSuccess());
  }
}
