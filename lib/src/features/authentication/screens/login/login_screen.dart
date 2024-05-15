import 'package:authentication_app/src/features/authentication/screens/forgot_password_screen/forgot_password_phone_number_screen.dart';
import 'package:authentication_app/src/features/authentication/screens/sign_up_screen/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../forgot_password_screen/forgot_password_mail_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Welcome Back,',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'E-Mail',

                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        showModalBottomSheet(context: context,
                            builder: (context)=>Container(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Which one You like?',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),

                                  ),
                                  Text("Select The option given below to Reset Passeword"),

                                  const SizedBox(height: 30,),
                                  GestureDetector(
                                    onTap: (){
                                      Get.to( ForgetPasswordEmail());

                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(30),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text("Email",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize:20,
                                              color: Colors.white

                                            ),

                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  GestureDetector(
                                    onTap: (){
                                      Get.to( ForgetPasswordPhone());

                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(30),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text("Phone Number",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize:20,
                                                color: Colors.white

                                            ),

                                          ),

                                        ],
                                      ),
                                    ),
                                  ),


                                ],
                              ),
                            ),
                        );
                      },
                      child: Text('Forget Password?'),
                    ),
                    ElevatedButton(

                      onPressed: () {  },
                      child: Text('LOGIN'),

                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text('OR'),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => print('Google Sign in pressed'),
                  child: Text('Sign in with Google'),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Don\'t have an Account?'),
                    TextButton(
                      onPressed: (){
                        Get.to(SignUpScreen());
                      },
                      child: Text('Signup'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}