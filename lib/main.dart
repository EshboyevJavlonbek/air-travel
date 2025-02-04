import 'package:air_travel/login/presentation/widgets/full_information.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AirTravel());
}

class AirTravel extends StatelessWidget {
  const AirTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FullInformation(),
    );
  }
}
