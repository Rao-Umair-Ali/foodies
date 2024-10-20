import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselShop extends StatefulWidget {
  final List imageLists;
  final bool enableInfiniteScroll;

  const CarouselShop({
    super.key,
    required this.imageLists,
    required this.enableInfiniteScroll,
  });

  @override
  _CarouselShopState createState() => _CarouselShopState();
}

class _CarouselShopState extends State<CarouselShop> {
  int _currentIndex = 0; // To track the current index

  @override
  Widget build(BuildContext context) {
    // Get the screen width using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(
          width: screenWidth, // Use the full screen width
          child: CarouselSlider(
            items: widget.imageLists.map((imageUrl) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(imageUrl),
                    ),
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
              height: 237, // Increase height for better display
              viewportFraction: 1.0, // Controls the width of each item
              autoPlay: true,
              enableInfiniteScroll: widget.enableInfiniteScroll,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index; // Update the current index
                });
              },
            ),
          ),
        ),
        const SizedBox(height: 5), // Space between carousel and dots
        _buildDots(), // Call the method to build the dots
      ],
    );
  }

  Widget _buildDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.imageLists.length, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentIndex == index ? Colors.white : Colors.grey,
          ),
        );
      }),
    );
  }
}
