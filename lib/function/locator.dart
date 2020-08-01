import 'package:get_it/get_it.dart';
import 'package:world_breaking_news/function/constant.dart';
import 'package:world_breaking_news/function/customfun.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => CustomFunction());
  locator.registerLazySingleton(() => Constant());
}
