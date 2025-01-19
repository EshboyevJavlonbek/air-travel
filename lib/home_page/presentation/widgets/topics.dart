import 'package:flutter/material.dart';

class Topics extends StatelessWidget {
  const Topics({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Color(0xFF4B4B4B),
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }
}
