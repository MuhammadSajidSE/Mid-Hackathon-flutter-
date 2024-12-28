
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget { 
const Page2({Key? key}) : super(key: key); 

@override 
Widget build(BuildContext context) { 
	return Column(
	    children: [
	      Container(
	        margin: const EdgeInsets.only(left: 50),
	        // ignore: unnecessary_const
	        child: const Text("Your Bag",style: const TextStyle(fontSize: 30,color: Colors.green,fontWeight: FontWeight.bold),))
	    ],
	  ); 
} 
} 
