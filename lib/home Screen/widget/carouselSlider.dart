import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselShop extends StatelessWidget {
  final List imageLists;
  final bool enableInfiniteScroll;
  const CarouselShop(
      {super.key,
      required this.imageLists,
      required this.enableInfiniteScroll});

  @override
  Widget build(BuildContext context) {
    // Get the screen width using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth, // Use the full screen width
      child: CarouselSlider(
        items: imageLists.map((imageUrl) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(05),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imageUrl),
                ),
              ),
            ),
          );
        }).toList(),
        options: CarouselOptions(
            height: 193, // Increase height for better display
            viewportFraction:
                1.0, // Controls the width of each item (90% of screen width)
            autoPlay: true,
            enableInfiniteScroll: enableInfiniteScroll // Enable auto-scrolling
            ),
      ),
    );
  }
}
