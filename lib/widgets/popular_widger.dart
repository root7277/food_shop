import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_shop/appdata/popular_data/popular.dart';

class PopularWidget extends StatefulWidget {
  const PopularWidget({super.key});

  @override
  State<PopularWidget> createState() => _PopularWidgetState();
}

class _PopularWidgetState extends State<PopularWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: popularData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 165,
        ), 
        itemBuilder: (context, index){
          final items = popularData[index];
          return Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.only(left: 19, right: 12),
            width: 150,
            height: 230,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(13)),
              color: Color.fromARGB(255, 231, 227, 227),
            ),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, 'food_data', arguments: items);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(items['popular_image'], width: 100, height: 95),
                  const SizedBox(height: 4),
                  Text(items['popular_name'], style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(items['popular_price'], style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 184, 156, 58))),
                      // IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/icon_plus.svg')),
                      SvgPicture.asset('assets/icons/icon_plus.svg'),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}