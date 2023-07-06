import 'package:flutter/material.dart';
import 'package:food_shop/widgets/add_ones_widget.dart';
import 'package:food_shop/widgets/navigation_bar_widget.dart';


class FoodDataPage extends StatefulWidget {
  const FoodDataPage({super.key});

  @override
  State<FoodDataPage> createState() => _FoodDataPageState();
}

class _FoodDataPageState extends State<FoodDataPage> {
  int count_food = 1;
  @override
  Widget build(BuildContext context) {

    final foodData = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFF5F23DE),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 350,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 34),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){Navigator.pushNamed(context, 'home_page');}, icon: const Icon(Icons.arrow_back, color: Colors.white, size: 25)),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Image.asset(foodData['popular_image'], height: 240),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 36, left: 32, right: 39),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 91,
                          height: 44,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            color: Color(0xFF5F23DE),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                              Icon(Icons.star, color: Color.fromARGB(255, 243, 156, 18),),
                              Text('4.5', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600, color: Colors.white),)
                            ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(foodData['popular_price'], style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w600, color: Color(0xFFB89C3A)),),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 27),
                  Padding(
                    padding: const EdgeInsets.only(left: 32, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(foodData['popular_name'], style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black),),
                        SizedBox(
                          width: 118,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: (){
                                  setState(() { 
                                  count_food++;
                                  });
                                },
                                icon: const Icon(Icons.add_circle_outline, color: Color(0xFF8058CB), size: 18)
                              ),
                              Text('$count_food', style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFF5817E1)),),
                              IconButton(
                                onPressed: (){
                                  setState(() {                                 
                                  if(count_food > 1){
                                    count_food--;
                                  }else{
                                    count_food;
                                  }
                                  });
                                },
                                icon: const Icon(Icons.remove_circle_outline, color: Color(0xFF8058CB), size: 18)
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 32),
                    child: Text("""Big Juicy Beef Burger with cheese,lettuce
tomato,onions and special sauce""", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFF949494)),),
                  ),  
                  const SizedBox(height: 43),
                  const Padding(
                    padding: EdgeInsets.only(left: 32),
                    child: Text('Add Ones', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),),
                  ),
                  const SizedBox(height: 23),
                  const Padding(
                    padding: EdgeInsets.only(left: 33, right: 64),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AddOnes(image_food: 'assets/addones/pishloq.png'),
                        AddOnes(image_food: 'assets/addones/cola.png'),
                        AddOnes(image_food: 'assets/addones/my.png'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        minimumSize: const MaterialStatePropertyAll(Size(330, 50)),
                        backgroundColor: const MaterialStatePropertyAll(Color(0xFF5F23DE)),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                        )
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, 'home_page');
                      }, 
                      child: const Text('Add to cart', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}