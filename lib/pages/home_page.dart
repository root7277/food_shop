import 'package:flutter/material.dart';
// import 'package:food_shop/widgets/navigation_bar_widget.dart';
import 'package:food_shop/widgets/scroll_food.dart';
import 'package:food_shop/widgets/cart_widget.dart';
import 'package:food_shop/widgets/popular_widger.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Menu', style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600, color: Colors.black),),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/appbar.png'),
                      backgroundColor: Color.fromARGB(255, 237, 232, 232),
                      radius: 25,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container( 
                  margin: const EdgeInsets.fromLTRB(15, 0, 15, 20),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 224, 223, 223),
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search, color: Colors.grey,),
                        hintText: 'Search',
                        hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
             ),
             const SizedBox(height: 80, child: Expanded(child: ScrollFood())),
             const TextWidget(title: 'Promotions'),
             const SizedBox(height: 5),
             const CartWidget(),
             const SizedBox(height: 34),
             const TextWidget(title: 'Popular'),
             const SizedBox(height: 3),
             const Expanded(child: PopularWidget()),
            ],
          ),
        ),
      ),
    );
  }
}






class TextWidget extends StatelessWidget {
  final title;
  const TextWidget({
    super.key,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 22),
      child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
    );
  }
}