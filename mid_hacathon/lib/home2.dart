import 'package:flutter/material.dart';
import 'package:mid_hacathon/tab1.dart';
import 'package:mid_hacathon/tab2.dart';
import 'package:mid_hacathon/tab3.dart';
import 'package:mid_hacathon/tab4.dart';

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
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Image.asset("image3.png", height: 170, width: 170),
              const SizedBox(
                width: 120,
              ),
              Image.asset("image5.png", height: 30, width: 30),
              const SizedBox(
                width: 20,
              ),
            ],
          )
        ],
      ),
      drawer: Drawer(
     backgroundColor:
                    Color.fromARGB(255, 163, 211, 165), 
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: ListView(
            children: [
              const SizedBox(height: 100,),
              ListTile(
                leading: const Icon(Icons.shopify_rounded,color: Colors.white,size: 40,),
                title: const Text(
                  'Shop',
                  style: TextStyle(color: Colors.white,fontSize: 23),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.travel_explore_rounded,color: Colors.white,size: 40,),
                title: const Text('Plant Care',style: TextStyle(color: Colors.white,fontSize: 23),),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.group,color: Colors.white,size: 40,),
                title: const Text('Community',style: TextStyle(color: Colors.white,fontSize: 23),),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
               ListTile(
                leading: const Icon(Icons.person_4,color: Colors.white,size: 40,),
                title: const Text('My Account',style: TextStyle(color: Colors.white,fontSize: 23),),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.bus_alert,color: Colors.white,size: 40,),
                title: const Text('Track Order',style: TextStyle(color: Colors.white,fontSize: 23),),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 20,),
              const Center(child: Text("Get The Dirt",style: TextStyle(fontSize: 30,color: Colors.white),)),
                const SizedBox(height: 20,),
                Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.only(left: 10),
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(5)),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Enter Password",
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
            const Center(
              child: Text("FAQ",style: TextStyle(fontSize: 30,color: Colors.white),),
            ),
            const Center(
              child: Text("About Us",style: TextStyle(fontSize: 30,color: Colors.white),),
            ),const Center(
              child: Text("Contact",style: TextStyle(fontSize: 30,color: Colors.white),),
            ),
            ],
          ),
        ),
      ),
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 247, 247, 247),
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
                      color: Color.fromARGB(255, 0, 0, 0),
                      size: 35,
                    )
                  : const Icon(
                      Icons.home_outlined,
                      color: Colors.black,
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
                      Icons.heart_broken,
                      color: Color.fromARGB(255, 0, 0, 0),
                      size: 35,
                    )
                  : const Icon(
                      Icons.heart_broken_outlined,
                      color: Colors.black,
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
                      Icons.shopping_bag,
                      color: Colors.black,
                      size: 35,
                    )
                  : const Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.black,
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
                      color: Colors.black,
                      size: 35,
                    )
                  : const Icon(
                      Icons.person_outline,
                      color: Colors.black,
                      size: 35,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
