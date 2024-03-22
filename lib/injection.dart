import 'package:get_it/get_it.dart';
import 'package:slide_drawer/logic/app_logic.dart';

final locator = GetIt.instance;

void init() {
  GetIt.I.registerLazySingleton<AppLogic>(() => AppLogic());
}
