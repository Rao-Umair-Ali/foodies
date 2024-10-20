import 'package:flutter/material.dart';

class TextfieldLogin extends StatefulWidget {
  final String hinttext;
  final IconData icon;
  final TextInputType textType;
  final TextEditingController controller;
  final bool obsecureText;

  const TextfieldLogin({
    super.key,
    required this.hinttext,
    required this.icon,
    required this.textType,
    required this.controller,
    required this.obsecureText,
  });

  @override
  State<TextfieldLogin> createState() => _TextfieldLoginState();
}

class _TextfieldLoginState extends State<TextfieldLogin> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obsecureText; // Initialize the state based on the widget's value
  }

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText; // Toggle the obscure text state
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.textType,
      style: const TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        prefixIcon: IconButton(
          icon: Icon(widget.icon),
          onPressed: _toggleObscureText,
        ),
        hintText: widget.hinttext,
        hintStyle: const TextStyle(color: Colors.white),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white), // White border for focused state
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white,width: 2), // White border for enabled state
        ),
      ),
      obscureText: _obscureText,
    );
  }
}
