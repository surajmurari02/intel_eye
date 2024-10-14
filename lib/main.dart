import 'package:flutter/material.dart';
import 'package:intel_eye/views/screens/extended_view.dart';
import 'package:intel_eye/views/screens/home_screen.dart';
import 'package:intel_eye/views/screens/splash_screen.dart';

void main() {
  runApp(IntelEye());
}

class IntelEye extends StatelessWidget {
  const IntelEye({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        ExtendedView.routeName: (context) => ExtendedView(),
      },
    );
  }
}
