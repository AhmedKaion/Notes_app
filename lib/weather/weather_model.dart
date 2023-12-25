class WeatherModel {
  final String cityName;
  final String? image;
  final DateTime date;
  final double temp;
  final double maxtemp;
  final double mintemp;
  final String weatherCondition;

  WeatherModel(
      {required this.cityName,
      required this.image,
      required this.date,
      required this.temp,
      required this.maxtemp,
      required this.mintemp,
      required this.weatherCondition});

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['location']['name'],
      date: DateTime.parse(json['current']['last_updated']),
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxtemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      weatherCondition: json['forecast']['forecastday'][0]['day']['condition']
          ['text'],
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
    );
  }
}
