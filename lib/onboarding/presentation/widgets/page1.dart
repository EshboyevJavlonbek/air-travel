import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/onboarding/onboarding_1.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.none,
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black.withValues(alpha: 0.7),
                Colors.transparent
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to 👋",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.none),
              ),
              Text(
                "AirTravels",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    decoration: TextDecoration.none),
              ),
              Text(
                "The best furniture e-commerce app of the century for your daily needs!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none),
              )
            ],
          ),
        ),
      ],
    );
  }
}