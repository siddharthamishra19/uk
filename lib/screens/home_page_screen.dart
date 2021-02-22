import 'package:flutter/material.dart';
import 'package:udaro/constants/color_constants.dart';
import 'package:udaro/constants/common_constants.dart';
import 'package:udaro/constants/top_box_decoration.dart';
import 'package:udaro/custom_widgets/card_balance_amount.dart';
import 'package:udaro/custom_widgets/hello_name.dart';
import 'package:udaro/custom_widgets/last_transaction_heading.dart';
import 'package:udaro/custom_widgets/udaro_list.dart';
import 'package:udaro/custom_widgets/udaro_text.dart';

import 'add_udaro_screen.dart';

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    kDeviceHeight = MediaQuery.of(context).size.height;
    //storing the device height in kDeviceHeight constant

    kDeviceWidth = MediaQuery.of(context).size.width;
    //storing the device width in kDeviceWidth constant

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kBackgroundColor,
        selectedItemColor: kTopBoxColor,
        unselectedItemColor: kInsideCardColor,
        elevation: 5,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
        ],
      ),
      backgroundColor: kBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: kDeviceHeight * 0.55,
            decoration: kTopBoxDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: kDeviceHeight * 0.06,
                ),
                HelloNameHeading(), //This is the hello, $name$ shown in the top left with circle avatar
                SizedBox(
                  height: kDeviceHeight * 0.025,
                ),
                CardWithBalanceInfo(), //This is the card like container with all the balance, amount, shop name info.
                SizedBox(
                  height: kDeviceHeight * 0.020,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    UdaroCustomText(),
                    IconButton(
                      iconSize: 40,
                      icon: Icon(Icons.add),
                      onPressed: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (BuildContext context) =>
                              SingleChildScrollView(
                            child: AddUdaroScreen(),
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                          ),
                        );
                      },
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: kDeviceHeight * 0.03,
          ),
          LastTransaction(),
          Padding(
            padding: EdgeInsets.only(left: kDeviceWidth * 0.05),
            child: Container(
              width: kDeviceWidth * 0.9,
              height: kDeviceHeight * 0.315,
              child: UdaroList(),
            ),
          )
        ],
      ),
    );
  }
}
