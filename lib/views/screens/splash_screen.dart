import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  // @override
  // void init() {
  //   super.init();
  // }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                minRadius: width * 0.17,
                backgroundImage: AssetImage(""),
              ),
              SizedBox(
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
