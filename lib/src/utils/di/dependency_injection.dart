

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:weather/src/features/data/data_source/weather_remote_data_source.dart';
import 'package:weather/src/features/data/repo_impl/weather_repo_impl.dart';
import 'package:weather/src/features/domain/repo/weather_repo.dart';
import 'package:weather/src/features/domain/usecase/get_weather_usecase.dart';
import 'package:weather/src/features/presentation/bloc/weather_bloc.dart';

final GetIt locator = GetIt.instance;
enum ContentType { urlEncoded, json, multipart }

void setupLocator() {
  Dio jsonDio = locator.registerSingleton<Dio>(
    buildDioClient(contentType: ContentType.json),
    instanceName: 'jsonDio',
  );

  Dio multipartDio = locator.registerSingleton<Dio>(
    buildDioClient(contentType: ContentType.multipart),
    instanceName: 'multipartDio',
  );

  Dio urlEncodeDio = locator.registerSingleton<Dio>(
    buildDioClient(contentType: ContentType.multipart),
    instanceName: 'urlEncodeDio',
  );


  locator.registerSingleton<WeatherRemoteDataSource>(WeatherRemoteDataSource(jsonDio));
  locator.registerLazySingleton<WeatherRepo>(() => WeatherRepoImpl(locator<WeatherRemoteDataSource>(),));
  locator.registerLazySingleton<GetWeatherUseCase>(() => GetWeatherUseCase(locator<WeatherRepo>()));
  locator.registerLazySingleton<WeatherBloc>(() => WeatherBloc(locator<GetWeatherUseCase>()));

}



Dio buildDioClient({String? baseUrl, ContentType? contentType}){
  String content;

  contentType ??= ContentType.urlEncoded;
  baseUrl ??= baseUrl;

  if (contentType == ContentType.multipart) {
    content = 'multipart/form-data';
  } else if (contentType == ContentType.json) {
    content = 'application/json; charset=utf-8';
  }
  else {
    content = 'application/x-www-form-urlencoded';
  }

  final headers = {
    'accept': '*/*',
    'Content-Type': content,
  };
  final dio = Dio()..options = BaseOptions(
    baseUrl: baseUrl ?? "",
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 5),
    sendTimeout: const Duration(seconds: 5),
    headers: headers,
  );

  dio.interceptors.addAll(
      [
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
        )
      ]
  );
  return dio;
}