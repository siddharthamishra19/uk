import 'package:flutter/material.dart';

double kDeviceHeight; //constant for storing the device height
double kDeviceWidth; // constant for storng the device width

//top name is only the name which is bolded. (after hello,)
TextStyle kTopNameTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.white,
  fontSize: 16,
  letterSpacing: 1.5,
);

//the hello in the top left after circle avatar
TextStyle kTopHelloStyle = TextStyle(
  color: Colors.white60,
  fontSize: 14,
  letterSpacing: 1.3,
);

//This is the style for 'Balance' inside the card.
TextStyle kBalanceTextStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold);

//This is the text style for 'Rs. Amount' inside the card.
TextStyle kAmountTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 35,
  fontWeight: FontWeight.w600,
);

//This is the text style for the 'Shop Name' inside the card.
TextStyle kShopNameTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    letterSpacing: 1.5);
