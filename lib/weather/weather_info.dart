import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:practice/weather/weather_model.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key});
  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32),
          ),
          Text('update at ${weatherModel.date.hour}:${weatherModel.date.minute}',
            style: TextStyle(
                fontSize: 24),
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network("https:${weatherModel.image}"),
              Text(
              weatherModel.temp.toString(),
                style: TextStyle(
                    fontSize: 32),
              ),
              Column(
                children: [
                  Text('Maxtemp:${weatherModel.maxtemp.round()}',
                    style: TextStyle(
                        fontSize: 16),
                  ),
                  Column(
                    children: [
                      Text('Mintemp:${weatherModel.mintemp.round()}',
                        style: TextStyle(
                            fontSize: 16),
                      ),
                ],
              )
            ],
          ),


        ],
      ),
      SizedBox(
        height: 32,
      ),
      Text(weatherModel.weatherCondition,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32),),
    ],
    ),
    );
  }
}

