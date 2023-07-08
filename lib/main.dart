import 'package:flutter/material.dart';
import 'package:food_shop/pages/food_data_page.dart';
import 'package:food_shop/pages/getstarted_page.dart';
import 'package:food_shop/pages/home_page.dart';
import 'package:food_shop/pages/items_in_cart_page.dart';

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
      initialRoute: 'getstarted_page',
      routes: {
        'getstarted_page': (context) => const GetStartedPage(),
        'home_page': (context) => const HomePage(),
        'food_data': (context) => const FoodDataPage(),
        'items_in_cart': (context) => const ItemsInCart(),
      },
    );
  }
}
