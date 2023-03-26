import 'package:get_it/get_it.dart';
import 'package:camera/camera.dart';
import 'package:FarmaCode/main.dart';
import 'camera.dart';

final locator = GetIt.instance;
void setupLocator() {
  locator.registerLazySingleton<CameraService>(() => CameraService());
}
