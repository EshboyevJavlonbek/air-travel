import 'package:air_travel/onboarding/presentation/widgets/page1.dart';
import 'package:air_travel/onboarding/presentation/widgets/page2.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [Page1(), Page2()],
      ),
    );
  }
}


