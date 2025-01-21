import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          PageV1(),
          PageV2(),
        ],
      ),
    );
  }
}

class PageV2 extends StatelessWidget {
  const PageV2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          children: [
            Image(
              image: AssetImage("assets/images/onboarding/onboarding_2.png"),
              width: double.infinity,
              height: double.infinity,
            ),
            Image(
              image: AssetImage("assets/images/onboarding/onboarding_3.png"),
              width: double.infinity,
              height: double.infinity,
            ),
            Image(
              image: AssetImage("assets/images/onboarding/onboarding_4.png"),
              width: double.infinity,
              height: double.infinity,
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.only(top: 32,left: 24,right: 24,bottom: 48,),
            width: 428,
            height: 370,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  maxLines: 3,
                  "We provide high quality products just for you",
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,

                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.center,
                    width: 380,
                    height: 58,
                    decoration: BoxDecoration(
                      color: Color(0xFF3BB77E),
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(4, 8),
                          blurRadius: 4,
                          spreadRadius: 0,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    child: Text(
                      "Keyingi",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PageV1 extends StatelessWidget {
  const PageV1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage("assets/images/onboarding/onboarding_1.png"),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black.withValues(alpha: 0.7), Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 34, bottom: 84),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                textAlign: TextAlign.center,
                "Welcome to 👋",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "AirTravels",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 64,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "The best furniture e-commerce app of the century for your daily needs!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

