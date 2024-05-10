import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IncorrectCityName extends StatelessWidget {
  const IncorrectCityName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/pngegg.png', height: 100, width: 100),
            Text(
              'there was an error please enter the correct city name or check internet conection and try again',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
