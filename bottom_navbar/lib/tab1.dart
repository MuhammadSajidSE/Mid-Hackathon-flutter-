import 'package:flutter/material.dart';

class Page1 extends StatelessWidget { 
const Page1({Key? key}) : super(key: key); 

@override 
Widget build(BuildContext context) { 
	return Container( 
	color: const Color(0xffC4DFCB), 
	child: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 30,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(5),
          child: Card(
            color: Colors.amber,
            child: Center(child: Text('$index')),
          ),
        );
      }
    ),
	); 
} 
} 