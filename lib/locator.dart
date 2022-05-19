import 'package:get_it/get_it.dart';
import 'package:kloti_app/repository/user_repository.dart';
import 'package:kloti_app/services/fake_auth_service.dart';
import 'package:kloti_app/services/firebase_auth_service.dart';
GetIt locator=GetIt.instance;
void setupLocator(){
  locator.registerLazySingleton(() => FirebaseAuthService());
  locator.registerLazySingleton(() => FakeAuthenticationService());
  locator.registerLazySingleton(() => UserRepository());
}