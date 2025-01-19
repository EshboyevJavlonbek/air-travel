import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 274,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xFF3BB77E),
        borderRadius: BorderRadius.circular(100),
        boxShadow: [BoxShadow(
          color: Colors.grey,
          spreadRadius: 0,
          blurRadius: 24,
          offset: Offset(4, 8,)
        )]
      ),
      child: Text(
        "Batafsil...",
        style: TextStyle(
          color: Color(0xFFFFFFFF),
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),
    );
  }
}
