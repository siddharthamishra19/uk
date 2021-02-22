import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udaro/models/udaro_data.dart';
import 'package:udaro/screens/home_page_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (builder) => UdaroData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
            HomePageScreen(), // homepage screen is the main screen that gets initialized first.
      ),
    );
  }
}
