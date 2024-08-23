import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../domain/usecase/get_weather_usecase.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {

  final GetWeatherUseCase getWeatherUseCase;
  WeatherBloc(this.getWeatherUseCase) : super(WeatherInitial()) {
    on<WeatherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
