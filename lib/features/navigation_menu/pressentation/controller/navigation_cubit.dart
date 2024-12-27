import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:fursan_travel_app/utils/local_storage/cach_keys.dart';
import 'package:fursan_travel_app/utils/local_storage/cache_helper.dart';
import 'package:meta/meta.dart';

import '../../../../generated/l10n.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationInitial());

  int indx = 0;

  void chnageIndx(int index) {
    emit(NavigationLoading());
    indx = index;
    emit(NavigationSuccess());
  }
}
