import 'package:flutter/material.dart';


class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(85, 25, 213, 1),
      body: Padding(
        padding: const EdgeInsets.only(left: 55, top: 120),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           const CircleAvatar(
            backgroundImage: AssetImage('assets/get.png'),
            backgroundColor: Color.fromARGB(255, 237, 232, 232),
            radius: 130,
           ),
           const SizedBox(height: 100),
           const Text("""Enjoy Your \n     Food""", style: TextStyle(fontSize: 42, fontWeight: FontWeight.w600, color: Colors.white),),
           const SizedBox(height: 41),
           ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, 'home_page');
            }, 
            child: Text('Get Started', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 85, 25, 213)),), 
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 217, 217, 217)),
              minimumSize: MaterialStatePropertyAll(Size(245, 79)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(36)))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}