import 'package:flutter/material.dart';
import 'package:food_shop/appdata/data.dart';

class ScrollFood extends StatefulWidget {
  const ScrollFood({super.key});

  @override
  State<ScrollFood> createState() => _ScrollFoodState();
}

class _ScrollFoodState extends State<ScrollFood> {

  int colorIndex = 0;

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
              InkWell(
                onTap: (){
                  setState(() {
                    colorIndex = index;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  width: 66,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(14)),
                    color: colorIndex == index? const Color(0xFF652BDB): const Color(0xFFDAD7D7),
                  ),
                  child: Image.asset(itemFood['image'], height: 50),
                ),
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