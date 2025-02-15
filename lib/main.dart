import 'package:flutter/material.dart';
import 'package:roadex_app/screens/homepage_screen.dart';
import 'package:roadex_app/screens/intro_screen.dart';
import 'package:roadex_app/screens/login_screen.dart';
import 'package:roadex_app/screens/signup_screen.dart';
import 'package:roadex_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/splash' : (context) => SplashScreen(),
        '/intro' : (context) => IntroScreen(),
        '/signup' : (context) => SignupScreen(),
        '/login' : (context) => LoginScreen(),
        '/home' : (context) => HomepageScreen(),
      },
    );
  }
}
