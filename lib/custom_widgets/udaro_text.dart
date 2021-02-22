import 'package:flutter/material.dart';
import 'package:udaro/constants/common_constants.dart';

class UdaroCustomText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: kDeviceWidth * 0.08),
      child: Text(
        "Udaro Khata",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}
