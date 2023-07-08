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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/get.png'),
                backgroundColor: Color.fromARGB(255, 237, 232, 232),
                radius: 130,
              ),
              const SizedBox(height: 100),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Text(
                  """Enjoy Your Food""",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.w600, color: Colors.white),
                ),
              ),
              const SizedBox(height: 41),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'home_page');
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 217, 217, 217)),
                  minimumSize: MaterialStatePropertyAll(Size(245, 79)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(36)))),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 85, 25, 213)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
