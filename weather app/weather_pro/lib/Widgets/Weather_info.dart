import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_pro/Cubits/Get_weather_cubit/Get_weather_cubit.dart';
import 'package:weather_pro/Models/Weather_model.dart';

class Weather_info extends StatelessWidget {
  const Weather_info({
    super.key,
    required this.weather,
  });

  final WeatherModel weather;

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel =
        BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Center(
      child: Container(
        height: 220,
        width: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            colors: [
              Color(0xff5936B4),
              Color(0xff362A84),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                weatherModel.CityName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'updated at: ${weatherModel.Date.hour}:${weatherModel.Date.minute}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.network('https:${weatherModel.Image!}'),
                      Text(
                        weatherModel.WeaterConditon,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '${weatherModel.Temp.round()}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 85,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Max: ${weatherModel.MaxTemp.round()}',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text('Min: ${weatherModel.MinTemp.round()}',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
