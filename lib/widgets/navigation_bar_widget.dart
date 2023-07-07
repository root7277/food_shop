import 'package:flutter/material.dart';
import '../appdata/data.dart';


class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: _current,
      selectedItemColor: const Color.fromARGB(255, 111, 60, 213), 
      unselectedItemColor: const Color.fromARGB(255, 193, 170, 243),
      onTap: (value) {
        setState(() {
          _current = value;
          Navigator.pushNamed(context, map[value]);
        });
      },

      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ]
    );
  }
}