import 'package:flutter/material.dart';
import 'package:mid_hacathon/login.dart';
import 'package:mid_hacathon/signup.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(40),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 24, 110, 27),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )),
              width: double.infinity,
              height: 400,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Center(
                          child: Image.asset("image1.png",
                              height: 250, width: 250)),
                      Center(
                          child: Image.asset(
                        "image2.png",
                        height: 280,
                        width: 280,
                      )),
                    ],
                  ),
                  const Text(
                    "Plantefy",
                    style: TextStyle(fontSize: 27, color: Colors.white),
                  )
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(right: 200),
            child: const Text(
              "Get Ready",
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 24, 110, 27)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 180),
            child: const Text(
              "Be Hyjyenic",
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 24, 110, 27)),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const Signup()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  const Color.fromARGB(255, 24, 110, 27), // Text color
              minimumSize: const Size(300, 50), // Width and height
            ),
            child: const Text(
              "LetsStrat",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
