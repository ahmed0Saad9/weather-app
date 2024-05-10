import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_pro/Screns/Home_view.dart';
import 'package:weather_pro/Screns/Sign_up_View.dart';

import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextField.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
            child: Text(
              'Welcome!',
              style: TextStyle(color: Colors.deepPurple, fontSize: 40),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                CustomTextField(
                  label: 'E-mail',
                  icon: Icon(Icons.mail),
                ),
                SizedBox(height: 20),
                CustomTextField(
                  label: 'Password',
                  icon: Icon(Icons.key),
                ),
                SizedBox(height: 40),
                Button(
                  color: Colors.deepPurple,
                  text: 'Login',
                  page: HomeView(),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? ",style: TextStyle(fontSize: 18)),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Sign_up_View();
                        },),);
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.deepPurple,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.deepPurple,
                        fontSize: 18),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
