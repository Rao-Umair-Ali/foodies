import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart' as carousel;
import 'package:foodies/home%20Screen/widget/carouselSlider.dart';
import 'package:foodies/home%20Screen/widget/itemsSlider.dart'; // Alias to avoid conflict

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List itemList = [
    "assets/images/Card.png",
    "assets/images/Card.png",
    "assets/images/Card.png",
    "assets/images/Card.png",
    "assets/images/Card.png",
    "assets/images/Card.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // Background Image
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/bgImage.png'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Positioned ListTile
        Positioned(
          top: 0, // Position the ListTile at the top
          left: 0,
          right: 0,
          child: Container(
            height: 120,
            decoration: const BoxDecoration(
              color: Colors.black54, // Semi-transparent background for contrast
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
        ),
        // Positioned TextField
        Positioned(
          top: 100, // Position the TextField below the ListTile
          left: 16,
          right: 16,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: const Offset(0, 2), // Shadow position
                ),
              ],
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.black54),
                border: InputBorder.none, // Remove the border
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
              ),
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),

        const Positioned(
          top: 170, // Position the TextField below the ListTile
          left: 16,
          right: 16,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ItemsSlider(
                  groceryName: "Pulses",
                  imageLink: "assets/images/c.png",
                ),
                SizedBox(
                  height: 10,
                ),
                ItemsSlider(
                  groceryName: "Pulses",
                  imageLink: "assets/images/c.png",
                ),
                SizedBox(
                  width: 10,
                ),
                ItemsSlider(
                  groceryName: "Pulses",
                  imageLink: "assets/images/a.png",
                ),
                SizedBox(
                  width: 10,
                ),
                ItemsSlider(
                  groceryName: "Pulses",
                  imageLink: "assets/images/a.png",
                ),
                SizedBox(
                  width: 10,
                ),
                ItemsSlider(
                  groceryName: "Rice",
                  imageLink: "assets/images/b.png",
                ),
                SizedBox(
                  width: 10,
                ),
                ItemsSlider(
                  groceryName: "Pulses",
                  imageLink: "assets/images/d.png",
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: 300, // Position the TextField below the ListTile
            left: 16,
            right: 16,
            child:
                CarouselShop(imageLists: itemList, enableInfiniteScroll: true)),
        Positioned(
          bottom: 0, // Position the TextField below the ListTile
          left: 16,
          right: 16,
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(05),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/cards.png"),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
