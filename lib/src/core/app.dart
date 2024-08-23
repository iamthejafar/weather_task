import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/src/features/presentation/bloc/weather_bloc.dart';
import 'package:weather/src/features/presentation/screens/weather_screen.dart';
import 'package:weather/src/utils/di/dependency_injection.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => locator<WeatherBloc>(),
        ),
      ],
      child: MaterialApp(
        home: WeatherScreen(),
      ),
    );
  }
}
