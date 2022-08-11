import 'package:flutter/material.dart';
import 'package:food_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Delivery UI',
      //remove the debug banner on the rightt side ofo the screen to make the build cleanner. 
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: HomeScreen(),
    );
  }
}
