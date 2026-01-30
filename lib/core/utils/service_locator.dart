import 'package:book_store/core/utils/api_services.dart';
import 'package:book_store/features/home/data/data_sources/home_local_data_source.dart';
import 'package:book_store/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:book_store/features/home/data/repos/home_repo_impl.dart';
import 'package:book_store/features/home/domain/repos/home_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  Dio dio = Dio();
  dio.interceptors.add(LogInterceptor(
    requestBody: true,
    responseHeader: true,
    responseBody: true,
    requestHeader: true,
    error: true,
  ));
  getIt.registerSingleton<ApiServices>(ApiServices(dio));
  getIt.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(getIt.get<ApiServices>()),
  );
  getIt.registerSingleton<HomeLocalDataSource>(HomeLocalDataSourceImpl());
  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepoImpl(
      homeRemoteDataSource: getIt.get<HomeRemoteDataSource>(),
      homeLocalDataSource: getIt.get<HomeLocalDataSource>(),
    ),
  );
}
