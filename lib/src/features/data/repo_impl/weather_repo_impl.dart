
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:weather/src/comman/data_state.dart';
import 'package:weather/src/features/data/data_source/weather_remote_data_source.dart';
import 'package:weather/src/features/domain/repo/weather_repo.dart';

class WeatherRepoImpl implements WeatherRepo {

  final WeatherRemoteDataSource weatherRemoteDataSource;

  WeatherRepoImpl(this.weatherRemoteDataSource);
  @override
  Future<DataState<dynamic>> getWeatherData({required String key, required String query}) async {
    try{
      final httpResponse = await weatherRemoteDataSource.getWeatherData(key: key, query: query);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
            requestOptions: httpResponse.response.requestOptions,
            response: httpResponse.response,
            error: httpResponse.response.statusMessage));
      }
    }  on DioException catch (e) {
      return DataFailed(e);
    }

  }

}