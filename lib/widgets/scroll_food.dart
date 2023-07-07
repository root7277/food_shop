import 'package:flutter/material.dart';
import 'package:food_shop/appdata/data.dart';
class ScrollFood extends StatefulWidget {
  const ScrollFood({super.key});

  @override
  State<ScrollFood> createState() => _ScrollFoodState();
}

class _ScrollFoodState extends State<ScrollFood> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: data.length,
      itemBuilder: (context, index){
        final itemFood = data[index];
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 8),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                // margin: EdgeInsets.symmetric(horizontal: 12),
                width: 66,
                height: 52,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  color: Color.fromARGB(255, 224, 223, 223),
                ),
                child: Image.asset(itemFood['image'], height: 50),
              ),
              const SizedBox(height: 5),
              Text(itemFood['name_food'], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),)
            ],
          ),
        );
      }
    );
  }
}