import 'package:flutter/material.dart';
import 'package:foodies/Login/widget/loginInkwell.dart';
import 'package:foodies/Login/widget/loginTextField.dart';
import 'package:foodies/Login/widget/loginbutton.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailAddress = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/images/bgImage.png"), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Header Section
              Column(
                children: [
                  Image.asset("assets/images/logo.png"),
                  Image.asset("assets/images/foodieText.png"),
                  const Text(
                    "Deliver Favourite food",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),

              // Login Section
              Container(
                color: Color(0xff1D102D),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 398,
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Log In",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    TextfieldLogin(
                      hinttext: "email",
                      icon: Icons.mail,
                      textType: TextInputType.emailAddress,
                      controller: emailAddress,
                      obsecureText: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextfieldLogin(
                      hinttext: "Password",
                      icon: Icons.remove_red_eye_outlined,
                      textType: TextInputType.visiblePassword,
                      controller: password,
                      obsecureText: true,
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkwellLogin(
                          colorName: Colors.white,
                          textName: "Forgot Password?",
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ButtonLogin(
                      text: "Log In",
                      callback: () {
                        // Call your login function here
                      },
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(color: Colors.white),
                  ),
                  InkwellLogin(
                    colorName: Colors.white,
                    textName: "Signup",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
