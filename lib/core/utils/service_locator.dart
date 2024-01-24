import 'package:books_app/core/utils/api_service.dart';
import 'package:books_app/features/home/data/repos/home_repo_implemenation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplementation>(HomeRepoImplementation(
    getIt.get<ApiService>(),
  ));
}
