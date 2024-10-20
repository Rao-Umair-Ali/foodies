import 'package:flutter/material.dart';

class ButtonSignup extends StatelessWidget {
  final String text;
  final VoidCallback callback;

  const ButtonSignup({super.key, required this.text, required this.callback});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 265,
      height: 44,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.zero,
        ),
        onPressed: callback,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff2737CF), 
                Color(0xff6562FB), 
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            // Remove borderRadius to make the button rectangular
          ),
          alignment: Alignment.center, // Center the text
          child: Text(
            text,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
