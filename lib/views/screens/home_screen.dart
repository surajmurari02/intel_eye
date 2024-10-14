import 'package:flutter/material.dart';
import 'package:intel_eye/views/widgets/camera_card.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/homeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        actions: [
          Text(
            "Intel Eye",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),
          ),
          SizedBox(
            width: 20,
          )
        ],
        leading: Icon(Icons.menu_rounded),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: width * 0.22,
              ),
              Text("Notification"),
              Text("Light"),
              Text("Alarm")
            ],
          ),
          CameraCard()
        ],
      ),
    );
  }
}
