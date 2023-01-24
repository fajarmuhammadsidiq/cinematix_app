import 'package:cinematix_app/pages/homepage.dart';
import 'package:cinematix_app/pages/loginpage.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: GestureDetector(
        onTap: (() => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            )),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                    height: 168,
                    width: 199,
                    child: Image.asset(
                      "assets/img/onboarding.png",
                      fit: BoxFit.contain,
                    )),
              ),
              Text(
                "Enjoy the Movie",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "Enjoy your favorite movies comfortably",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
