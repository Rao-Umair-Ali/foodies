import 'package:flutter/material.dart';
import 'package:foodies/SignUp/signup.dart';

class InkwellLogin extends StatelessWidget {
  final Color colorName;
  final String textName;
  const InkwellLogin(
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
            context, MaterialPageRoute(builder: (context) => Signup()));
      },
    );
  }
}
