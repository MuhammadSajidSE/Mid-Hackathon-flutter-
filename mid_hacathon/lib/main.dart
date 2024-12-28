import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mid_hacathon/firebase_options.dart';
import 'package:mid_hacathon/home.dart';
import 'package:mid_hacathon/home2.dart';
import 'package:mid_hacathon/signup.dart';
import 'package:mid_hacathon/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: splash()
    );
  }
}