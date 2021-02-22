import 'package:flutter/material.dart';
import 'package:udaro/constants/common_constants.dart';

//This is widget shown in the top left with hello, name! and circle avatar
class HelloNameHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomSizedBox(space: 0.05),
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blueGrey,
          backgroundImage: AssetImage('images/manavatar.png'),
        ),
        CustomSizedBox(space: 0.025),
        Row(children: <Widget>[
          Text(
            "Hello,",
            style: kTopHelloStyle,
          ),
          CustomSizedBox(space: 0.010),
          Text("Siddhartha!", style: kTopNameTextStyle)
        ])
      ],
    );
  }
}

//custom sizedbox widget
class CustomSizedBox extends StatelessWidget {
  final double space;
  CustomSizedBox({this.space});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kDeviceWidth * space,
    );
  }
}
