import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:practice/weather/weather_model.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search City'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
            BlocProvider.of<GetWeatherCubit>(context).getWeather(cityName: value);
              Navigator.pop(context);
            },
            decoration: const InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              suffixIcon: Icon(Icons.search),
              labelText: 'Search',
              labelStyle: TextStyle(fontSize: 24),
              hintText: 'Enter City',
              hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow)),
            ),
          ),
        ),
      ),
    );
  }
}

WeatherModel? weatherModel;
