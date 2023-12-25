import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:practice/weather/weather_model.dart';

class WeatherService{
  final Dio dio;
   final String baseUrl = 'http://api.weatherapi.com/v1';
   final String apiKey ='3ab540d2597a4f51a93144700231311';
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
          '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=10');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    }on DioException catch(e){
      final String errMessage = e.response?.data['error']['message'] ?? 'oops';
      throw Exception(errMessage);
    } catch(e){
      log(e.toString());
      throw Exception('oops');
    }

  }
}