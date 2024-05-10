import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_pro/Cubits/Get_weather_cubit/Get_weather%20states.dart';
import 'package:weather_pro/Cubits/Get_weather_cubit/Get_weather_cubit.dart';
import 'package:weather_pro/Screns/Search_view.dart';
import 'package:weather_pro/Widgets/No_weather_info.dart';
import 'package:weather_pro/Widgets/incorrect_City_Name.dart';

import '../Widgets/Weather_info.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        backgroundColor: Color(0xff1F1D47),
        elevation: 10,
        title: const Text(
          'WeatherApp',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
          ),
        ),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const Search_view();
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.search,
            ),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/home.jpg'),
          ),
        ),
        child: BlocBuilder<GetWeatherCubit, WeatherStates>(
          builder: (context, State) {
            if (State is WeatherInitialState) {
              return No_weather_info();
            } else if (State is WeatherLoadedState) {
              return Weather_info(
                weather: State.weatherModel,
              );
            } else {
              return IncorrectCityName();
            }
          },
        ),
      ),
    );
  }
}
