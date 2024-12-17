import 'package:fursan_travel_app/features/navigation_menu/pressentation/controller/navigation_cubit.dart';
import 'package:get_it/get_it.dart';

class NavigationServiseLocator {
  static Future<void> execute({required GetIt serviceLocator}) async {
    serviceLocator.registerSingleton<NavigationCubit>(NavigationCubit());
  }
}
