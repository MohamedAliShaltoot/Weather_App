// ignore_for_file: camel_case_types

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:wheather_app/Views/search_view.dart';
import 'package:wheather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:wheather_app/model/weather_model.dart';
import 'package:wheather_app/service/weatherService.dart';

class getWeatherCubit extends Cubit<WeatherState>{
  getWeatherCubit():super(NoWeatherState());
late WeatherModel weathermodel;
   getWeather({required String cityName}) async{

 try {
   weathermodel= 
  await WeatherService(Dio()).getCurrentWeather(cityName:cityName);
  
  emit(WeatherLoadedState(weatherModel: weathermodel));
}  catch (e) {
  emit(WeatherFailureState());
}








 
  }



}