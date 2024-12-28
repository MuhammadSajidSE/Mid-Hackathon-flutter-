import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mid_hacathon/cardwidget.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Image.asset("image3.png", height: 170, width: 170),
                const SizedBox(
                  width: 120,
                ),
                Image.asset("image5.png", height: 30, width: 30),
                const SizedBox(
                  width: 20,
                ),
                Image.asset("image6.png", height: 30, width: 30),
                const SizedBox(
                  width: 20,
                ),
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Image.asset("image4.png", height: 300, width: 500)),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20)),
                      child: const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: Icon(Icons.wallpaper_outlined),
                            hintText: "searching",
                            hintStyle: TextStyle(fontSize: 20),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none)),
                      ),
                    ),
                  ),
                  Image.asset("image7.png", height: 60, width: 70),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 35,
                  ),
                  Container(
                    child: const InkWell(
                        child: Text(
                      "Top Pick",
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    )),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    child: const InkWell(
                        child: Text(
                      "In Door",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    child: const InkWell(
                        child: Text(
                      "Out Door",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    child: const InkWell(
                        child: Text(
                      "Seeds",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                ],
              ),
              plantCard(context, "box${1}.png", "plant${1}.png", 0),
              plantCard(context, "box${2}.png", "plant${2}.png", 1),
              plantCard(context, "box${3}.png", "plant${3}.png", 2),
              plantCard(context, "box${4}.png", "plant${4}.png", 3),
              plantCard(context, "box${5}.png", "plant${5}.png", 4),
              //  Container(
              //   margin: EdgeInsets.only(left: 10),
              //   child: Image.asset("image12.png", height: 200, width: 450)),
              // Container(
              //   margin: EdgeInsets.only(left: 10),
              //   child: Image.asset("image11.png", height: 200, width: 450)),
              // Container(
              //   margin: EdgeInsets.only(left: 10),
              //   child: Image.asset("image16.png", height: 200, width: 350)),
              //  Container(
              //   margin: EdgeInsets.only(left: 10),
              //   child: Image.asset("image13.png", height: 200, width: 450)),
              //   SizedBox(
              //     height: 30,
              //   ),
              // Container(
              //   margin: EdgeInsets.only(left: 10),
              //   child: Image.asset("image17.png", height: 250, width: 450)),
              //   Container(
              //   margin: EdgeInsets.only(left: 10),
              //   child: Image.asset("image14.png", height: 200, width: 450)),
              // Container(
              //   margin: EdgeInsets.only(left: 10),
              //   child: Image.asset("image15.png", height: 200, width: 450)),
            ],
          ),
        ));
  }
}
