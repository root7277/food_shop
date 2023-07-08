import 'package:flutter/material.dart';
import 'package:food_shop/appdata/data.dart';
import 'package:food_shop/widgets/item_in_cart_widget.dart';


class ItemsInCart extends StatefulWidget {
  const ItemsInCart({super.key});

  @override
  State<ItemsInCart> createState() => _ItemsInCartState();
}

class _ItemsInCartState extends State<ItemsInCart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40),
              child: Text('${item['item_count']} items in cart', style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w500, color: Colors.black),),
            ),
            const SizedBox(height: 31),
            const ItemCartIn(),
            // const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text('Other Instruction', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
            ),
            const SizedBox(height: 45),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                  Text('\$36', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Color(0xFFB89C3A))),
                ],
              ),
            ),
            const SizedBox(height: 31),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xFF5F23DE)),
                  minimumSize: MaterialStatePropertyAll(Size(344, 59)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))))
                ),
                onPressed: (){}, 
                child: const Text('Checkout', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500, color: Colors.white),)
              ),
            ),
            Center(
              child: TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, 'home_page');
                }, 
                child: const Text('Back to menu', textAlign: TextAlign.center, style: TextStyle(decoration: TextDecoration.underline, fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black,),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}