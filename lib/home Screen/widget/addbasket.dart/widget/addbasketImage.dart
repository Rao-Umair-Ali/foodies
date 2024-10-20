import 'package:flutter/material.dart';

class BasketImage extends StatelessWidget {
  final String image;
  const BasketImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
        width: 360,
        child: Image.asset(
          image,
        ));
  }
}
