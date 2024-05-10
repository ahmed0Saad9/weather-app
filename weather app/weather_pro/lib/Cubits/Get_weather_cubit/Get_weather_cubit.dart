import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_pro/Cubits/Get_weather_cubit/Get_weather%20states.dart';
import 'package:weather_pro/Models/Weather_model.dart';
import '../../Services/Weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherStates> {
  GetWeatherCubit() : super(WeatherInitialState());
 WeatherModel? weatherModel;

  GetWeather({required String CityName}) async {
   try {
      weatherModel =
          await WeatherService(Dio()).GetCurrentWeather(CityName: CityName);
     emit(WeatherLoadedState(weatherModel!));
   }  catch (e) {
     emit(WeatherFailureState(e.toString()));

   }
  }
}
