import 'package:practice/weather/weather_model.dart';

class WeatherState {}

class WeatherInitialState extends WeatherState {}

class LoadedState extends WeatherState {
  final WeatherModel weatherModel;

  LoadedState(this.weatherModel);
}

class FailureState extends WeatherState {
  final String errMessage;

  FailureState(this.errMessage);
}
