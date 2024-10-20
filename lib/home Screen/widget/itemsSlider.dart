import 'package:flutter/material.dart';

class ItemsSlider extends StatelessWidget {
  final List lists;
  final String? text;

  ItemsSlider({super.key, required this.lists, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 120, // Set a fixed height to constrain the ListView
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              height: 200,
              width: 80,
              child: Column(
                children: [
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(13),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(lists[index]["itemPicture"]),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 8), // Optional spacing between image and text
                  Text(
                    lists[index]["itemName"],
                    style: TextStyle(color: Colors.white),
                  ), // Replace with actual data
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 15,
            );
          },
          itemCount: lists.length,
        ),
      ),
    );
  }
}

class ItemsVerticalSlider extends StatelessWidget {
  final List lists;

  const ItemsVerticalSlider({super.key, required this.lists});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 500, // Set a fixed height to constrain the ListView
            child: ListView.separated(
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(13),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(lists[index]),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 5,
                );
              },
              itemCount: lists.length,
            ),
          ),
          // You can add more widgets here to increase the scrollable area
          SizedBox(height: 10), // Placeholder for more content
          // Additional widgets...
        ],
      ),
    );
  }
}
