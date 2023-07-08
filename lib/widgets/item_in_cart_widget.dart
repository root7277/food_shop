import 'package:flutter/material.dart';
import 'package:food_shop/appdata/data.dart';

class ItemCartIn extends StatefulWidget {
  final Function() onPressed;
  const ItemCartIn({super.key, required this.onPressed});

  @override
  State<ItemCartIn> createState() => _ItemCartInState();
}

class _ItemCartInState extends State<ItemCartIn> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: orderImage.length,
          itemBuilder: (context, index) {
            return CustomContainer(index: index, onPressed: widget.onPressed);
          }),
    );
  }
}

class CustomContainer extends StatefulWidget {
  final int index;
  final Function() onPressed;

  const CustomContainer({
    super.key,
    required this.index,
    required this.onPressed,
  });

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  int countfood_2 = 1;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: const Color(0xFFE7E3E3)),
            child: Image.asset(orderImage[widget.index]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10), //a
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text(orderName[widget.index], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    orderPrice[widget.index],
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFFB89C3A)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          countfood_2++;
                        });
                      },
                      icon: const Icon(Icons.add_circle_outline, color: Color(0xFF8058CB), size: 18),
                    ),
                    Text(
                      '$countfood_2',
                      style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFF5817E1)),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (countfood_2 > 1) {
                            countfood_2--;
                          } else {
                            countfood_2;
                          }
                        });
                      },
                      icon: const Icon(Icons.remove_circle_outline, color: Color(0xFF8058CB), size: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          setState(() {
            orderName.remove(orderName[widget.index]);
            orderPrice.remove(orderPrice[widget.index]);
            orderImage.remove(orderImage[widget.index]);
          });
          item['item_count']--;
          print(item['item_count']);
          widget.onPressed();
        },
        icon: const Icon(Icons.cancel_outlined, color: Color(0xFFCE3B3B)),
      ),
    );
  }
}
