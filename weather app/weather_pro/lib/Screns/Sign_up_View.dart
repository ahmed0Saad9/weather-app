import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextField.dart';
import 'Home_view.dart';

class Sign_up_View extends StatelessWidget {
  const Sign_up_View({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
            child: Text(
              'Create account',
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
                  label: 'Phone',
                  icon: Icon(Icons.phone),
                ),
                SizedBox(height: 20),
                CustomTextField(
                  label: 'Password',
                  icon: Icon(Icons.key),
                ),
                SizedBox(height: 40),
                Button(
                  color: Colors.deepPurple,
                  text: 'Sign up',
                  page: HomeView(),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("have an account? ",style: TextStyle(fontSize: 18)),
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                        },
                      child: Text(
                        'Login',
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
