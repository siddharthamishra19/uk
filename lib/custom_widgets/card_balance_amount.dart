import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:udaro/constants/color_constants.dart';
import 'package:udaro/constants/common_constants.dart';

class CardWithBalanceInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: kInsideCardColor,
        elevation: 10,
        shadowColor: kInsideCardColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: InkWell(
          borderRadius: BorderRadius.circular(40),
          splashColor: kBackgroundColor,
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: kDeviceWidth * 0.075,
                vertical: kDeviceHeight * 0.01),
            child: Container(
              height: kDeviceHeight * 0.25,
              width: kDeviceWidth * 0.75,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Balance',
                        style: kBalanceTextStyle,
                      ),
                      Icon(
                        FontAwesomeIcons.moneyBillWave,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Text(
                    'Rs. 1000',
                    style: kAmountTextStyle,
                  ),
                  Text(
                    'Shop Name',
                    style: kShopNameTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
