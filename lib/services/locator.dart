import 'package:get_it/get_it.dart';
import 'package:todo_test/backend/api_client.dart';
import 'package:todo_test/backend/auth_bloc.dart';
import 'package:todo_test/backend/auth_datasource.dart';
import 'package:todo_test/backend/auth_repo.dart';
import 'package:todo_test/backend/dio_client.dart';

class AppInitializer {
  static final locator = GetIt.instance;

  static void init() {
    // Register your dependencies here, if needed
    // locator.registerSingleton<YourClass>(YourClass());

    // You can add more registrations as needed
    locator.registerFactory<AuthBloc>(() => AuthBloc(locator()));

    locator.registerFactory<AuthRemoteDataSource>(
        () => AuthRemoteDataSource(client: locator()));
    locator.registerFactory<AuthRepository>(() => AuthRepository());

    // ** Singletons
    locator.registerLazySingleton<ApiClient>(() => DioClient());
   
  }
}
