import 'package:flutter/material.dart';

class AddOnes extends StatefulWidget {
  final String imageFood;
  const AddOnes({
    super.key,
    required this.imageFood,
  });

  @override
  State<AddOnes> createState() => _AddOnesState();
}

class _AddOnesState extends State<AddOnes> {
  

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
                  padding: const EdgeInsets.all(8),
                  width: 66,
                  height: 52,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: Color.fromARGB(255, 224, 223, 223),
                  ),
                  child: Image.asset(widget.imageFood, height: 50),
                ),
                Positioned(
                  left: 43,
                  top: 25,
                  child: IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.add_circle, size: 20, color: Color.fromARGB(255, 19, 224, 52)),
                  ),
                ),
              ],
    );
  }
}