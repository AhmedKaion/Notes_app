import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:practice/weather/weather_model.dart';
import 'package:practice/weather/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInitialState());
  late WeatherModel weatherModel;

  getWeather({required String cityName}) async {
    try {
       weatherModel =
          await WeatherService(Dio()).getCurrentWeather(cityName: cityName);
      emit(LoadedState(weatherModel));
    } catch (e) {
      emit(FailureState(e.toString()));
    }
  }
}
