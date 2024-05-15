import 'package:authentication_app/src/features/authentication/controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(SignUpController());
    final _formKey=GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Get On Board!'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Create your profile to start your Journey.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                TextField(
                  controller:controller.fullName ,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller:controller.email ,
                  decoration: InputDecoration(
                    labelText: 'E-Mail',
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller:controller.phoneNumber ,
                  decoration: InputDecoration(
                    labelText: '# Phone No',
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  controller:controller.password ,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                          SignUpController.instance.registerUser(
                              controller.email.text.trim(),
                              controller.password.text.trim(),
                          );
                        }
                      },
                      child: Text('SIGNUP'),
                    ),
                    SizedBox(width: 20),
                    Text('OR'),
                    SizedBox(width: 20),
                    OutlinedButton(
                      onPressed: () => print('Sign in with Google pressed'),
                      child: Text(' SIGN-IN WITH GOOGLE'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Already have an Account?'),
                    TextButton(
                      onPressed: () => print('LOGIN pressed'),
                      child: Text('LOGIN'),
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
