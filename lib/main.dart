import 'package:flutter/material.dart';
import 'package:food_shop/pages/food_data_page.dart';
import 'package:food_shop/pages/getstarted_page.dart';
import 'package:food_shop/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'getstarted',
      routes: {
        'getstarted_page':(context) {
          return const GetStartedPage();
        },
        'home_page':(context) {
          return const HomePage();
        },
        'food_data':(context) {
          return const FoodDataPage();
        }
      },
      home: const GetStartedPage(),
    );
  }
}
