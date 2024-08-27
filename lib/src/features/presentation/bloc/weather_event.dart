part of 'weather_bloc.dart';

@immutable
sealed class WeatherEvent {}

final class GetWeatherData extends WeatherEvent {
  final String query;
  GetWeatherData({required this.query});
}
