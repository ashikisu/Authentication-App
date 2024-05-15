import 'package:authentication_app/firebase_options.dart';
import 'package:authentication_app/src/features/authentication/screens/sign_up_screen/signup_screen.dart';
import 'package:authentication_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:authentication_app/src/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform)
  .then((value) => Get.put(AuthenticationRepository()));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: SAppTheme.lighThemeData,
      darkTheme:SAppTheme.darkThemeData ,
      themeMode: ThemeMode.light,
      home: const SignUpScreen(),
    );
  }
}

