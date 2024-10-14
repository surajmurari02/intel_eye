import 'package:flutter/material.dart';

class CameraCard extends StatelessWidget {
  const CameraCard({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      margin: EdgeInsets.all(12),
      child: Row(
        children: [
          Expanded(
              flex: 1, child: Image(image: AssetImage("assets/logo/logo/png"))),
          Container(
            width: 2,
            height: 20,
            color: Colors.white,
          ),
          Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("123"),
                  ToggleButtons(children: [], isSelected: []),
                  ToggleButtons(children: [], isSelected: [])
                ],
              ))
        ],
      ),
    );
  }
}
