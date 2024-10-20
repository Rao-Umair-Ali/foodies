import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodies/home%20Screen/widget/carouselSlider.dart';
import 'package:foodies/home%20Screen/widget/itemsSlider.dart'; // Alias to avoid conflict

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<Map<dynamic, dynamic>> itemsList = [
    {
      "itemName": "Sushi",
      "items": "7 pcs",
      "itemValue": "7 dollars",
      "itemPicture": "assets/images/a.png",
      "itemdetail":
          "i am bell pepper in a Container with Alignment. The default alignment for Text inside a Column is centered, so you need to override that.Heres how you can align them to the left side of the page"
    },
    {
      "itemName": "Burger",
      "items": "3 pcs",
      "itemValue": "7 dollars",
      "itemPicture": "assets/images/b.png",
      "itemdetail": "i am bell pepper"
    },
    {
      "itemName": "Cake",
      "items": "3 pcs",
      "itemValue": "7 dollars",
      "itemPicture": "assets/images/c.png",
      "itemdetail": "i am ginger"
    },
    {
      "itemName": "Mexican",
      "items": "7 pcs",
      "itemValue": "7 dollars",
      "itemPicture": "assets/images/d.png",
      "itemdetail": "i am apple"
    },
    {
      "itemName": "Sushi",
      "items": "3 pcs",
      "itemValue": "7 dollars",
      "itemPicture": "assets/images/a.png",
      "itemdetail": "i am bell pepper"
    },
    {
      "itemName": "Burger",
      "items": "3 pcs",
      "itemValue": "7 dollars",
      "itemPicture": "assets/images/b.png",
      "itemdetail": "i am ginger"
    },
  ];
  final List itemList = [
    "assets/images/Card.png",
    "assets/images/Card.png",
    "assets/images/Card.png",
    "assets/images/Card.png",
    "assets/images/Card.png",
    "assets/images/Card.png",
  ];
  final List itemLists = [
    "assets/images/cards.png",
    "assets/images/cards.png",
    "assets/images/cards.png",
    "assets/images/cards.png",
    "assets/images/cards.png",
    "assets/images/cards.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bgImage.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 120,
            decoration: const BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                ListTile(
                  leading:
                      const Icon(Icons.more_vert_sharp, color: Colors.white),
                  title: const Text("Delivery",
                      style: TextStyle(color: Colors.white)),
                  subtitle: const Text("Maplewood Suites",
                      style: TextStyle(color: Colors.white)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.run_circle, color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon:
                            const Icon(Icons.bike_scooter, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 120,
            left: 0,
            right: 0,
            bottom:
                0, // Allow the Positioned widget to fill the remaining space
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Categories",
                            style:
                                TextStyle(color: Colors.white, fontSize: 17)),
                        Text("See all", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  ItemsSlider(lists: itemsList),
                  CarouselShop(
                      imageLists: itemList, enableInfiniteScroll: true),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Fastest near you",
                            style:
                                TextStyle(color: Colors.white, fontSize: 17)),
                      ],
                    ),
                  ),
                  ItemsVerticalSlider(lists: itemLists),
                ],
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 10,
            right: 10,
            child: Container(
              height: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage('assets/images/bgImage.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const TextField(
                textAlign: TextAlign.justify,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: 'Search...',
                  suffixIcon: Icon(
                    Icons.qr_code_scanner_outlined,
                    color: Colors.white,
                  ),
                  hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                ),
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Positioned(
            left: 10,
            right: 10,
            bottom: 10,
            child: // Required for BackdropFilter

                Container(
              height: 77,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    30), // Optional, to round the edges if needed
                child: Stack(
                  children: [
                    // Apply a blur effect using BackdropFilter
                    BackdropFilter(
                      filter: ImageFilter.blur(
                          sigmaX: 5.0, sigmaY: 5.0), // Adjust blur intensity
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              // Color with some transparency
                              Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                              Color(0xff30216c).withOpacity(
                                  0.8), // Another color with transparency
                            ],
                            begin: Alignment
                                .topLeft, // Starting point of the gradient
                            end: Alignment
                                .bottomRight, // Transparent background with blur
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.maps_home_work_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              Text(
                                "Home",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.browse_gallery_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              Text(
                                "Browse",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.shopping_bag_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              Text(
                                "Shop",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.list_alt_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              Text(
                                "List",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.person_2_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              Text(
                                "profile",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
