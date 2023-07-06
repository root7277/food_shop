import 'package:flutter/material.dart';

class ItemsInCart extends StatefulWidget {
  const ItemsInCart({super.key});

  @override
  State<ItemsInCart> createState() => _ItemsInCartState();
}

class _ItemsInCartState extends State<ItemsInCart> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 40, top: 40),
              child: Text('2 items in cart', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500, color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}