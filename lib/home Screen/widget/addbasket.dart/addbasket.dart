import 'package:flutter/material.dart';
import 'package:foodies/home%20Screen/widget/addbasket.dart/widget/addbasketImage.dart';
import 'package:foodies/home%20Screen/widget/itemsSlider.dart';

class Restaurant extends StatelessWidget {
  const Restaurant({super.key});

  @override
  Widget build(BuildContext context) {
    final List itemLists = [
      "assets/images/cards.png",
      "assets/images/cards.png",
      "assets/images/cards.png",
      "assets/images/cards.png",
      "assets/images/cards.png",
      "assets/images/cards.png",
    ];
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgImage.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        top: 0,
        child: Container(
            height: 340,
            decoration: const BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
            ),
            child: const BasketImage(image: "assets/images/page.png")),
      ),
      Positioned(
          top: 420,
          left: 0,
          right: 0,
          bottom: 0, // Allow the Positioned widget to fill the remaining space
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 44,
                          width: 197,
                          child: Image.asset("assets/images/buton.png")),
                      Container(
                          height: 44,
                          width: 140,
                          child: Image.asset("assets/images/button.png")),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        Text(
                          "Featured items",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Appetizers",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Sushi",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ]),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ItemsVerticalSlider(lists: itemLists),
                    )
                  ],
                )
              ],
            ),
          )),
      Positioned(
        top: 260,
        left: 10,
        right: 10,
        child: Container(
            height: 154,
            decoration: BoxDecoration(
              color: Color(0xff30216c).withOpacity(0.5),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              // image: DecorationImage(
              //   image: AssetImage('assets/images/bgImage.png'),
              //   fit: BoxFit.cover,
              // ),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.timer_outlined,
                          color: Colors.white,
                          size: 70,
                        ),
                        Column(
                          children: [
                            Text(
                              "Kinka Izakaya",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "2972 Westheimer Rd. Santa Ana",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Delivery fee",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "3.99",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Delivery fee",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "3.99",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Delivery fee",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "3.99",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                )
              ],
            )),
      ),
    ]));
  }
}
