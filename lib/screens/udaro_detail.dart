import 'package:flutter/material.dart';
import 'package:udaro/constants/color_constants.dart';
import 'package:udaro/constants/common_constants.dart';

class UdaroDetailScreen extends StatelessWidget {
  final String name;
  final String amount;
  final String items;

  UdaroDetailScreen({this.name, this.amount, this.items});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kDeviceHeight * 0.3,
      decoration: BoxDecoration(
        color: kBackgroundColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: kDeviceHeight * 0.02,
          ),
          Text(
            name,
            style: kTopNameTextStyle.copyWith(
              color: Colors.black,
              fontSize: kDeviceHeight * 0.04,
              letterSpacing: 1.3,
            ),
          ),
          SizedBox(
            height: kDeviceHeight * 0.02,
          ),
          Text(
            items,
            style: kBalanceTextStyle.copyWith(color: Colors.black54),
          ),
          SizedBox(
            height: kDeviceHeight * 0.02,
          ),
          Text(
            'Rs. $amount',
            style: kAmountTextStyle.copyWith(
              color: Colors.black,
              letterSpacing: 2,
            ),
          )
        ],
      ),
    );
  }
}
