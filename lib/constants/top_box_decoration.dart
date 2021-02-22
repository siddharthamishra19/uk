import 'package:flutter/material.dart';
import 'package:udaro/constants/color_constants.dart';

//This box is the main top box which is acting as the background for all the top components.
//Dark Purple ish color
BoxDecoration kTopBoxDecoration = BoxDecoration(
  color: kTopBoxColor,
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(40),
    bottomRight: Radius.circular(40),
  ),
);
