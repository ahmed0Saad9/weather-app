import 'package:weather_pro/Models/Weather_model.dart';

class WeatherStates {}

class WeatherInitialState extends WeatherStates{}

class WeatherLoadedState extends WeatherStates {
  final WeatherModel weatherModel;

  WeatherLoadedState(this.weatherModel);
}

class WeatherFailureState extends WeatherStates {
  final String ErrMessage;

  WeatherFailureState(this.ErrMessage);
}
