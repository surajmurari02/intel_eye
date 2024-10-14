import 'package:flutter/material.dart';

class CameraCard extends StatefulWidget {
  const CameraCard({super.key});

  @override
  State<CameraCard> createState() => _CameraCardState();
}

class _CameraCardState extends State<CameraCard> {
  bool lightButton = true;
  bool alarmButton = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white, width: 0.5))),
      margin: EdgeInsets.all(15),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage("assets/img/camera_view1.png"),
                    height: 50,
                  ),
                  Text("3"),
                ],
              )),
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Transform.scale(
                    scale: 0.6,
                    child: Switch(
                      value: lightButton,
                      onChanged: (val) {
                        setState(() {
                          lightButton = val;
                        });
                      },
                    ),
                  ),
                  Transform.scale(
                    scale: 0.6,
                    child: Switch(
                      value: alarmButton,
                      onChanged: (val) {
                        setState(() {
                          alarmButton = val;
                        });
                      },
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
