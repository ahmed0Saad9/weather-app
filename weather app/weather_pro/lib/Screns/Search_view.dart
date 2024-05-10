import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_pro/Cubits/Get_weather_cubit/Get_weather_cubit.dart';
import 'package:weather_pro/Models/Weather_model.dart';
import 'package:weather_pro/Services/Weather_service.dart';

class Search_view extends StatelessWidget {
  const Search_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6151C3),
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        backgroundColor: Color(0xff1F1D47),
        title: const Text(
          'Search',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Group 90.png'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(
                16.0,
              ),
              // Image.asset(
              //   'assets/images/pngegg.png',
              //   height: 100,
              //   width: 100,
              // ),
              child: Center(
                child: TextField(
                  style: TextStyle(color: Colors.white),

                  cursorColor: Colors.white,
                  onSubmitted: (value) async {
                    var getWeatherCubit =
                        BlocProvider.of<GetWeatherCubit>(context);
                    getWeatherCubit.GetWeather(CityName: value);
                    Navigator.of(context).pop();
                  },
                  // autofocus: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    labelStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    labelText: 'Search',
                    suffixIconColor: Colors.white,
                    suffixIcon: const Icon(Icons.search),
                    hintText: 'Enter city name',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
