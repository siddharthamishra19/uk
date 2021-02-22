import 'package:flutter/material.dart';
import 'package:udaro/constants/common_constants.dart';

class LastTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: kDeviceWidth * 0.06,
      ),
      child: Text(
        'Last Transactions',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}
