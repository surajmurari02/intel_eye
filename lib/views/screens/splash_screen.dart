import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intel_eye/views/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splashScreen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    screenDelay();
  }

  screenDelay() {
    Timer(Duration(seconds: 3), () {
      Navigator.popAndPushNamed(context, HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: width * 0.25,
                height: width * 0.25,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/logo/logo.png",
                        ),
                        fit: BoxFit.contain)),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Intel Eye",
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Powered by: Samajh.ai",
            ),
          ],
        ));
  }
}
