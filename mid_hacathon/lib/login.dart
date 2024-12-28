import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mid_hacathon/home.dart';
import 'package:mid_hacathon/home2.dart';
import 'package:mid_hacathon/splash.dart';

class login extends StatefulWidget {
  const login({super.key});
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  loginpage() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
      );
      if (credential.user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      }
    } on FirebaseAuthException {}
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(50)),
              margin: const EdgeInsets.only(right: 300, top: 30),
              child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => const splash()));
                  },
                  icon: const Icon(Icons.arrow_back)),
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Image.asset("image3.png", height: 170, width: 170)),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(right: 250),
              child: Text("Login",
                  style: GoogleFonts.philosopher(
                      color: const Color.fromARGB(255, 24, 110, 27),
                      fontSize: 36,
                      fontWeight: FontWeight.w900)),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.only(left: 10),
              width: 400,
              decoration: BoxDecoration(
                  border: Border.all(), borderRadius: BorderRadius.circular(5)),
              child: TextField(
                controller: emailcontroller,
                decoration: const InputDecoration(
                    hintText: "Enter Email",
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.only(left: 10),
              width: 400,
              decoration: BoxDecoration(
                  border: Border.all(), borderRadius: BorderRadius.circular(5)),
              child: TextField(
                controller: passwordcontroller,
                decoration: const InputDecoration(
                    hintText: "Enter Password",
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                loginpage();
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) =>
                //           HomePage()), // Change to appropriate home page
                // );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 24, 110, 27), // Text color
                minimumSize: const Size(300, 50), // Width and height
              ),
              child: const Text(
                "Lgin",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
