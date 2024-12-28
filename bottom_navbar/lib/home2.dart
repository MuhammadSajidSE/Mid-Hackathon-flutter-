import 'package:bottom_navbar/tab3.dart';
import 'package:bottom_navbar/tab1.dart';
import 'package:bottom_navbar/tab2.dart';
import 'package:bottom_navbar/tab4.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget { 
const HomePage({Key? key}) : super(key: key); 

@override 
_HomePageState createState() => _HomePageState(); 
} 

class _HomePageState extends State<HomePage> { 
int pageIndex = 0; 

final pages = [ 
	const Page1(), 
	const Page2(), 
	const Page3(), 
	const Page4(), 
]; 

@override 
Widget build(BuildContext context) { 
	return Scaffold( 
	backgroundColor: const Color(0xffC4DFCB), 
	appBar: AppBar( 
    backgroundColor: const Color(0xffC4DFCB), 
		centerTitle: true,  
	), 
  drawer: Drawer(
    backgroundColor: Colors.green,
    child: ListView(
      children: [
        ListTile(
  title: const Text('Item 1'),
  onTap: () {
    Navigator.pop(context);
  },
),
       ListTile(
  title: const Text('Item 1'),
  onTap: () {
    Navigator.pop(context);
  },
),
   ListTile(
  title: const Text('Item 1'),
  onTap: () {
    Navigator.pop(context);
  },
),
      ],
    ),
  ),
	body: pages[pageIndex], 
	bottomNavigationBar: Container( 
		height: 60, 
		decoration: const BoxDecoration( 
		color: Color.fromARGB(255, 55, 193, 106) ,
		borderRadius: BorderRadius.only( 
			topLeft: Radius.circular(20), 
			topRight: Radius.circular(20), 
		), 
		), 
		child: Row( 
		mainAxisAlignment: MainAxisAlignment.spaceAround, 
		children: [ 
			IconButton( 
			enableFeedback: false, 
			onPressed: () { 
				setState(() { 
				pageIndex = 0; 
				}); 
			}, 
			icon: pageIndex == 0 
				? const Icon( 
					Icons.home_filled, 
					color: Colors.white, 
					size: 35, 
					) 
				: const Icon( 
					Icons.home_outlined, 
					color: Colors.white, 
					size: 35, 
					), 
			), 
			IconButton( 
			enableFeedback: false, 
			onPressed: () { 
				setState(() { 
				pageIndex = 1; 
				}); 
			}, 
			icon: pageIndex == 1 
				? const Icon( 
					Icons.work_rounded, 
					color: Colors.white, 
					size: 35, 
					) 
				: const Icon( 
					Icons.work_outline_outlined, 
					color: Colors.white, 
					size: 35, 
					), 
			), 
			IconButton( 
			enableFeedback: false, 
			onPressed: () { 
				setState(() { 
				pageIndex = 2; 
				}); 
			}, 
			icon: pageIndex == 2 
				? const Icon( 
					Icons.widgets_rounded, 
					color: Colors.white, 
					size: 35, 
					) 
				: const Icon( 
					Icons.widgets_outlined, 
					color: Colors.white, 
					size: 35, 
					), 
			), 
			IconButton( 
			enableFeedback: false, 
			onPressed: () { 
				setState(() { 
				pageIndex = 3; 
				}); 
			}, 
			icon: pageIndex == 3 
				? const Icon( 
					Icons.person, 
					color: Colors.white, 
					size: 35, 
					) 
				: const Icon( 
					Icons.person_outline, 
					color: Colors.white, 
					size: 35, 
					), 
			), 
		], 
		), 
	), 
	); 
} 
}
