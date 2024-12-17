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
  Future<void> init() async {
    emit(LanguageLoading());
    storedLang = (changedLang == '' ? "ar" : changedLang)!;
    currentLang = Locale(storedLang);
    emit(LanguageSuccess());
  }
  void chnageLange(String lang) {
    emit(LanguageLoading());
    print("object");
    currentLang = Locale(lang);
    PrefService.putString(key: CacheKeys.lang, value: lang);
    print(currentLang);

    emit(LanguageSuccess());
  }
}
