import 'package:fursan_travel_app/features/language/presentation/controller/language_cubit.dart';
import 'package:get_it/get_it.dart';

class LanguageServiceLocator {
  static Future execute({required GetIt serviceLocator}) async {
    serviceLocator.registerSingleton<LanguageCubit>(LanguageCubit());
  }
}
