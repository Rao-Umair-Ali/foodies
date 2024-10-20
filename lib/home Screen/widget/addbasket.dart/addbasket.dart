import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 154,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/page.png"),
              ),
            ),
            child: const Column(
              children: [
                const ListTile(
                  leading: Icon(Icons.star),
                  title: Text("Kinka Izakaya"),
                  subtitle: Text("2972 Westheimer Rd. Santa Ana >"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: const [
                        Text("Delivery fees"),
                        Text("\$3.99"),
                      ],
                    ),
                    Column(
                      children: const [
                        Text("Delivery fees"),
                        Text("\$3.99"),
                      ],
                    ),
                    Column(
                      children: const [
                        Text("Delivery fees"),
                        Text("\$3.99"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16), // Optional spacing between containers
          Container(
            height: 393,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                fit: BoxFit.cover,
                
                image: AssetImage("assets/images/page.png"),
              ),
            ),
            child:const  SingleChildScrollView(
              child: Row(
                children: [
                  Column(children: [ Text("Item 1"), Text("Details"),],), Column(children: [ Text("Item 1"), Text("Details"),],), Column(children: [ Text("Item 1"), Text("Details"),],),
                
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
