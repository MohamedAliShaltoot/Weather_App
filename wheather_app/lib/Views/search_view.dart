

//import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
//import 'package:wheather_app/model/weather_model.dart';
//import 'package:wheather_app/service/weatherService.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search City"),
        backgroundColor: Colors.blue,
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Center(
          child: TextField(
            onSubmitted: (value) async{
var getTheWeatherCubit=  BlocProvider.of<getWeatherCubit>(context);
getTheWeatherCubit.getWeather(cityName: value);
//      weathermodel= await WeatherService(Dio()).getCurrentWeather(cityName:value);

 Navigator.pop(context);
              
            }

            ,decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 32,
                horizontal: 16,
              ),
              labelText: "Search City",
              labelStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
              suffixIcon: Icon(Icons.search),
              suffixIconColor: Colors.teal,
              hintText: " Enter City Name",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

