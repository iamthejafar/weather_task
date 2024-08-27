import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather/src/constants/constants.dart';

import '../../domain/usecase/get_weather_usecase.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {

  final GetWeatherUseCase getWeatherUseCase;

  WeatherBloc(this.getWeatherUseCase) : super(WeatherInitial()) {
    on<WeatherEvent>((event, emit)  => emit(WeatherLoading()));
    on<GetWeatherData>(_getWeatherData);
  }

  _getWeatherData(GetWeatherData event, Emitter<WeatherState> emi) async {
    final res = await getWeatherUseCase.call(GetWeatherParam(key: apiLKey, query: event.query));
  }

}
