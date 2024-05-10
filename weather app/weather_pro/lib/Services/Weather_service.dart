import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_pro/Models/Weather_model.dart';

class WeatherService {
  final Dio dio;
  final String BaseURL = 'https://api.weatherapi.com/v1';
  final String ApiKey = '94e89ed0795d48b8ad650150240902';
  WeatherService(this.dio);

  Future<WeatherModel> GetCurrentWeather({required String CityName}) async {
    try {
      Response response = await dio
          .get('$BaseURL/forecast.json?key=$ApiKey&q=$CityName&days=10');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String ErrMessage = e.response?.data['error']['message'] ??
          'oops there was an error, please try later';
      throw Exception(ErrMessage);
    }
    catch(e){
       log(e.toString());
     throw Exception('oops there was an error, please try later');
    }
  }
}
