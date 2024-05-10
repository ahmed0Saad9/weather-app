import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.color,
    required this.text,
    required this.page,
  });

  final Color color;
  final String text;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return page;
          },
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        height: 50,
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 24,color: Colors.white),
          ),
        ),
      ),
    );
  }
}