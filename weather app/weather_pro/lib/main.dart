import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_pro/Cubits/Get_weather_cubit/Get_weather%20states.dart';
import 'package:weather_pro/Cubits/Get_weather_cubit/Get_weather_cubit.dart';
import 'package:weather_pro/Screns/Home_view.dart';
import 'package:weather_pro/Screns/login_Screen.dart';
import 'package:weather_pro/Screns/splash_screen.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) =>
            BlocBuilder<GetWeatherCubit, WeatherStates>(
              builder: (context, state) {
                return MaterialApp(
                  theme: ThemeData(
                    primarySwatch: getThemeColor(
                      BlocProvider
                          .of<GetWeatherCubit>(context)
                          .weatherModel
                          ?.WeaterConditon,
                    ),
                  ),
                  debugShowCheckedModeBanner: false,
                  home: const SplashScreen(),
                );
              },
            ),
      ),
    );
  }
}


MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition) {
    case 'Sunny':
    case 'Clear':
      return Colors.amber;
    case 'Partly cloudy':
    case 'Cloudy':
    case 'Overcast':
    case 'Fog':
    case 'Freezing fog':
      return Colors.grey;
    case 'Mist':
      return Colors.blueGrey;
    case 'Patchy rain possible':
    case 'Patchy snow possible':
    case 'Patchy sleet possible':
    case 'Patchy freezing drizzle possible':
    case 'Patchy light drizzle':
    case 'Light drizzle':
    case 'Freezing drizzle':
    case 'Heavy freezing drizzle':
    case 'Patchy light rain':
    case 'Light rain':
    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Heavy rain at times':
    case 'Heavy rain':
    case 'Light freezing rain':
    case 'Moderate or heavy freezing rain':
    case 'Light sleet':
    case 'Moderate or heavy sleet':
    case 'Patchy light snow':
    case 'Light snow':
    case 'Patchy moderate snow':
    case 'Moderate snow':
    case 'Patchy heavy snow':
    case 'Heavy snow':
    case 'Ice pellets':
    case 'Light rain shower':
    case 'Moderate or heavy rain shower':
    case 'Torrential rain shower':
    case 'Light sleet showers':
    case 'Moderate or heavy sleet showers':
    case 'Light snow showers':
    case 'Moderate or heavy snow showers':
    case 'Light showers of ice pellets':
    case 'Moderate or heavy showers of ice pellets':
      return Colors.lightBlue;
    case 'Thundery outbreaks possible':
    case 'Patchy light rain with thunder':
    case 'Moderate or heavy rain with thunder':
    case 'Patchy light snow with thunder':
    case 'Moderate or heavy snow with thunder':
      return Colors.deepPurple;
    case 'Blowing snow':
    case 'Blizzard':
      return Colors.blue;
    default:
      return Colors.blue;
  }
}
