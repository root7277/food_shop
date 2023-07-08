import 'package:flutter/material.dart';
import 'package:food_shop/appdata/data.dart';

class ItemCartIn extends StatefulWidget {
  const ItemCartIn({super.key});

  @override
  State<ItemCartIn> createState() => _ItemCartInState();
}

class _ItemCartInState extends State<ItemCartIn> {
  int countfood_2 = 1;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: orderImage.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Row(
              children: [
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFFE7E3E3),
               ),
                child: Image.asset(orderImage[index]),
              ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Text(orderName[index], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(orderPrice[index], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFFB89C3A)),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: (){
                              setState(() {
                                countfood_2++;
                              });
                            }, 
                            icon: const Icon(Icons.add_circle_outline, color: Color(0xFF8058CB), size: 18),
                          ),
                          Text('$countfood_2', style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFF5817E1)),),
                          IconButton(
                            onPressed: (){
                              setState(() {
                              if(countfood_2 > 1){
                                countfood_2--;
                              }else{
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
                              onPressed: (){
                                setState(() {
                                  orderName.remove(orderName[index]);
                                  orderPrice.remove(orderPrice[index]);
                                  orderImage.remove(orderImage[index]);
                                });
                                item['item_count']--;
                              },
                              icon: const Icon(Icons.cancel_outlined, color: Color(0xFFCE3B3B)),
                            ),
          );
        }
      ),
    );
  }
}