import 'package:dio/dio.dart';
import 'package:wheather_app/model/weather_model.dart';

class WeatherService{
final Dio dio;
final String baseUrl ="https://api.weatherapi.com/v1";
final String apiKey = 'e10d2d2b463646da837114322242608';
  WeatherService(this.dio);

Future<WeatherModel> getCurrentWeather({required String cityName}) async {



try{
  Response response = await
  dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
   WeatherModel weathermodel = WeatherModel.fromJson(response.data);
   return weathermodel;
} on DioException catch(e){
   final String errorMessage = e.response?.data['error']['message'] ?? " ps there an error , try later";
   throw Exception(errorMessage);
}
 catch(e){
  throw Exception(" try later");
 }

 


 
  

 

}
















}