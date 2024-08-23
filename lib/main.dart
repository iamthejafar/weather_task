import 'package:flutter/material.dart';
import 'package:weather/src/core/app.dart';
import 'package:weather/src/utils/di/dependency_injection.dart';

void main() {
  setupLocator();
  runApp(App());
}

