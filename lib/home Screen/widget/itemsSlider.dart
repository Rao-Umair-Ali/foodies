import 'package:flutter/material.dart';

class ItemsSlider extends StatelessWidget {
  final String groceryName;
  final String imageLink;

  const ItemsSlider({
    super.key,
    required this.groceryName,
    required this.imageLink,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.circular(18),
      ),
      height: 140,
      width: 100,
      child: Column(
        children: [
          // Container to hold the image and text
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
             
              height: 120, // Adjusted height to ensure it fits
              child: Column(
                
                children: [
                 
                  Image.asset(
                    imageLink,
                    height: 80, 
                  ),
                   
                  Text(
                    groceryName,
                    style: const TextStyle(color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center, // Center the text
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
