import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheather_app/Views/search_view.dart';
import 'package:wheather_app/Widgets/no_weather_body.dart';
import 'package:wheather_app/Widgets/weather_info_body.dart';
import 'package:wheather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:wheather_app/cubits/get_weather_cubit/get_weather_states.dart';



class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [IconButton(onPressed:(){
Navigator.of(context).push(MaterialPageRoute(builder: (context){
return const SearchView();

}));

        }, icon: const Icon(Icons.search))],
      ),
      body: BlocBuilder<getWeatherCubit, WeatherState>(builder: (context,state) {
        if(state is NoWeatherState){
          return const NoWeatherBody();
        }


         else if(state is WeatherLoadedState) {
return  WeatherInfoBody();
        } 
        
        
        
        else{
          return const Text(" OOPs there was an error , try later");
        }
      }),
    );
  }
}