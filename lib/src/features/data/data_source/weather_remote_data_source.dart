import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather/src/constants/constants.dart';

part 'weather_remote_data_source.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class WeatherRemoteDataSource {
  factory WeatherRemoteDataSource(Dio dio) = _WeatherRemoteDataSource;
  
  @GET("/v1")
  Future<HttpResponse<dynamic>> getWeatherData({
    @Query("key") required String key,
    @Query("q") required String query,
  });

}