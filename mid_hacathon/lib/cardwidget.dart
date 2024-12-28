import 'package:flutter/material.dart';
import 'package:mid_hacathon/detail.dart';
import 'package:mid_hacathon/plantsList.dart';
Widget plantCard(context, boxImage, plantImage, index) {
  return InkWell(
    child: Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Stack(children: [
              Image.asset(
                boxImage,
                height: 170,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      plantList[index].shortName,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 20),
                    child: Text(
                      plantList[index].fullName,
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 20),
                        child: Text(
                          "\$${plantList[index].Price.toString()}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.heart_broken)),
                      SizedBox(
                        width: 30,
                      ),
                      Image.asset(
                        "ribbon.png",
                        height: 35,
                      )
                    ],
                  ),
                ],
              ),
            ]),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 170),
          child: Image.asset(
            plantImage,
            height: 180,
          ),
        ),
      ],
    ),
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detailed(),
          ));
    },
  );
}