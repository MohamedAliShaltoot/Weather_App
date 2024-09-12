import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheather_app/Views/home_view.dart';
import 'package:wheather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getWeatherCubit(),
      child:  MaterialApp(
        theme: ThemeData(
          // primarySwatch:getWeatherColor(condition) 
        )
        ,
          debugShowCheckedModeBanner: false,
           home: HomeView()),
    );
  }



  MaterialColor getWeatherColor(String condition) {
  switch (condition) {
    case "sunny":
    case "clear":
      return Colors.orange;
    case "partly cloudy":
      return Colors.blueGrey;
    case "cloudy":
    case "overcast":
      return Colors.grey;
    case "mist":
      return Colors.blueGrey;
    case "patchy rain possible":
    case "patchy snow possible":
    case "patchy sleet possible":
    case "patchy freezing drizzle possible":
      return Colors.blue;
    case "thundery outbreaks possible":
      return Colors.deepOrange;
    case "blowing snow":
    case "blizzard":
      return Colors.blue;
    case "fog":
      return Colors.grey;
    case "freezing fog":
      return Colors.blueGrey;
    case "patchy light drizzle":
    case "light drizzle":
      return Colors.blue;
    case "freezing drizzle":
      return Colors.blue;
    case "heavy freezing drizzle":
      return Colors.blue;
    case "patchy light rain":
    case "light rain":
      return Colors.blue;
    case "moderate rain at times":
    case "moderate rain":
      return Colors.blue;
    case "heavy rain at times":
    case "heavy rain":
      return Colors.blue;
    case "light freezing rain":
      return Colors.blue;
    case "moderate or heavy freezing rain":
      return Colors.blue;
    case "light sleet":
      return Colors.grey;
    case "moderate or heavy sleet":
      return Colors.grey;
    case "patchy light snow":
    case "light snow":
      return Colors.blue;
    case "patchy moderate snow":
    case "moderate snow":
      return Colors.blue;
    case "patchy heavy snow":
    case "heavy snow":
      return Colors.blue;
    case "ice pellets":
      return Colors.grey;
    case "light rain shower":
      return Colors.blue;
    case "moderate or heavy rain shower":
      return Colors.blue;
    case "torrential rain shower":
      return Colors.blue;
    case "light sleet showers":
      return Colors.grey;
    case "moderate or heavy sleet showers":
      return Colors.grey;
    case "light snow showers":
      return Colors.blue;
    case "moderate or heavy snow showers":
      return Colors.blue;
    case "light showers of ice pellets":
      return Colors.grey;
    case "moderate or heavy showers of ice pellets":
      return Colors.grey;
    case "patchy light rain with thunder":
      return Colors.deepOrange;
    case "moderate or heavy rain with thunder":
      return Colors.deepOrange;
    case "patchy light snow with thunder":
      return Colors.blue;
    case "moderate or heavy snow with thunder":
      return Colors.blue;
    default:
      return Colors.blue;
  }
}

}
/*


MaterialColor getWeatherColor(String condition) {
  switch (condition) {
    case "sunny":
    case "clear":
      return Colors.orange;
    case "partly cloudy":
      return Colors.blueGrey;
    case "cloudy":
    case "overcast":
      return Colors.grey;
    case "mist":
      return Colors.blueGrey[200];
    case "patchy rain possible":
    case "patchy snow possible":
    case "patchy sleet possible":
    case "patchy freezing drizzle possible":
      return Colors.blue[400];
    case "thundery outbreaks possible":
      return Colors.deepOrange;
    case "blowing snow":
    case "blizzard":
      return Colors.blue[800];
    case "fog":
      return Colors.grey[400];
    case "freezing fog":
      return Colors.blueGrey[400];
    case "patchy light drizzle":
    case "light drizzle":
      return Colors.blue[200];
    case "freezing drizzle":
      return Colors.blue[400];
    case "heavy freezing drizzle":
      return Colors.blue[600];
    case "patchy light rain":
    case "light rain":
      return Colors.blue[300];
    case "moderate rain at times":
    case "moderate rain":
      return Colors.blue[500];
    case "heavy rain at times":
    case "heavy rain":
      return Colors.blue[700];
    case "light freezing rain":
      return Colors.blue[400];
    case "moderate or heavy freezing rain":
      return Colors.blue[600];
    case "light sleet":
      return Colors.grey[400];
    case "moderate or heavy sleet":
      return Colors.grey[600];
    case "patchy light snow":
    case "light snow":
      return Colors.blue[200];
    case "patchy moderate snow":
    case "moderate snow":
      return Colors.blue[400];
    case "patchy heavy snow":
    case "heavy snow":
      return Colors.blue[600];
    case "ice pellets":
      return Colors.grey[400];
    case "light rain shower":
      return Colors.blue[300];
    case "moderate or heavy rain shower":
      return Colors.blue[500];
    case "torrential rain shower":
      return Colors.blue[700];
    case "light sleet showers":
      return Colors.grey[400];
    case "moderate or heavy sleet showers":
      return Colors.grey[600];
    case "light snow showers":
      return Colors.blue[200];
    case "moderate or heavy snow showers":
      return Colors.blue[400];
    case "light showers of ice pellets":
      return Colors.grey[400];
    case "moderate or heavy showers of ice pellets":
      return Colors.grey[600];
    case "patchy light rain with thunder":
      return Colors.deepOrange[300];
    case "moderate or heavy rain with thunder":
      return Colors.deepOrange[500];
    case "patchy light snow with thunder":
      return Colors.blue[400];
    case "moderate or heavy snow with thunder":
      return Colors.blue[600];
    default:
      return Colors.grey;
  }
}

*/ 