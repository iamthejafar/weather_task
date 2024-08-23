


import 'package:equatable/equatable.dart';
import 'package:weather/src/features/domain/repo/weather_repo.dart';

import '../../../comman/data_state.dart';
import '../../../comman/usecase.dart';

class GetWeatherUseCase implements UseCase<DataState<void>, GetWeatherParam> {
  final WeatherRepo _repository;

  GetWeatherUseCase(this._repository);

  @override
  Future<DataState<dynamic>> call(GetWeatherParam params) async {
    return await _repository.getWeatherData(key: params.key, query: params.query);
  }
}


class GetWeatherParam extends Equatable {
  final String key;
  final String query;

  const GetWeatherParam({required this.key,required this.query});

  @override
  List<Object?> get props => [key,query];
}