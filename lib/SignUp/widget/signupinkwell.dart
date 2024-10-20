import 'package:flutter/material.dart';
import 'package:foodies/Login/login.dart';

class InkwellSignup extends StatelessWidget {
  final Color colorName;
  final String textName;
  const InkwellSignup(
      {super.key, required this.colorName, required this.textName});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      child: Text(
        textName,
        style: TextStyle(
          color: colorName,
        ),
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login()));
      },
    );
  }
}
