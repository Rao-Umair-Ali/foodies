import 'package:flutter/material.dart';
import 'package:foodies/SignUp/widget/signupbutton.dart';
import 'package:foodies/SignUp/widget/signupinkwell.dart';
import 'package:foodies/SignUp/widget/signuptextfield.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _LoginState();
}

class _LoginState extends State<Signup> {
  TextEditingController emailAddress = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController UserName = TextEditingController();

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
                      "Signup",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    TextfieldSignup(
                      hinttext: "UserName",
                      icon: Icons.male,
                      textType: TextInputType.name,
                      controller: UserName,
                      obsecureText: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextfieldSignup(
                      hinttext: "email",
                      icon: Icons.mail,
                      textType: TextInputType.emailAddress,
                      controller: emailAddress,
                      obsecureText: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextfieldSignup(
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
                        InkwellSignup(
                          colorName: Colors.white,
                          textName: "Forgot Password?",
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ButtonSignup(
                      text: "Sign Up",
                      callback: () {},
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
                  InkwellSignup(
                    colorName: Colors.white,
                    textName: "Login",
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
