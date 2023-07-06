import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 10),
      child: Container(
        width: 355,
        height: 163,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: const Color.fromARGB(255, 128, 88, 203),
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 17, top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Today’s Offer', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 255, 255, 255)),),
                  SizedBox(height: 9),
                  Text('Free Plate Of Fries', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 255, 255, 255)),),
                  SizedBox(height: 12),
                  Text('on all orders above \$150', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 255, 255, 255)),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 63),
              child: Image.asset('assets/cartimage/cart_image.png', height: 200),
            ),
          ],
        ),
      ),
    );
  }
}