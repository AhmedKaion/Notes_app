import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:practice/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:practice/weather/no_weather_body.dart';
import 'package:practice/weather/search_view.dart';
import 'package:practice/weather/weather_info.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchView()));
              },
              icon: Icon(Icons.search)),
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherInitialState) {
            return NoWeatherBody();
          } else if (state is LoadedState) {
            return WeatherInfo();
          } else {
            return const Text('oooops');
          }
        },
      ),
    );
  }
}
