
import 'package:weather/src/comman/data_state.dart';

abstract class WeatherRepo {
  Future<DataState<dynamic>> getWeatherData({required String key, required String query});
}