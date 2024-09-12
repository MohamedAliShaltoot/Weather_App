

import 'package:wheather_app/model/weather_model.dart';

class WeatherState{}
class NoWeatherState extends WeatherState {}
class WeatherLoadedState extends WeatherState {

final WeatherModel weatherModel;

  WeatherLoadedState({required this.weatherModel});

}
class WeatherFailureState extends WeatherState {}