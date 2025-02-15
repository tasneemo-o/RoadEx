import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isAnimated = false;

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff817d7d),
                  Color(0xff3A3434),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1000),
            bottom: _isAnimated ? screenHeight / 2 - 125 : 0,
            right: _isAnimated ? screenWidth / 2 - 125 : screenWidth / 2 - 125,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 800),
              opacity: _isAnimated ? 1 : 0,
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/intro/logo.png',
                  width: 250,
                  height: 250,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      _isAnimated = true;
    });
    await Future.delayed(const Duration(milliseconds: 1500));
    Navigator.pushReplacementNamed(context, '/intro');
  }
}
