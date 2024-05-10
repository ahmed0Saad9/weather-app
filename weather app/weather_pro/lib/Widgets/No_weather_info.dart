import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class No_weather_info extends StatelessWidget {
  const No_weather_info({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('No weather info to show ',style: TextStyle( fontSize: 32,color: Colors.white ),),
              Icon(Icons.error_outline,color: Colors.white,size: 25),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(' please search for a city ',style: TextStyle( fontSize: 22 ,color: Colors.white),),
              Icon(Icons.search_rounded,color: Colors.white,size: 20),
            ],
          ),

        ],
      ),
    );
  }
}
