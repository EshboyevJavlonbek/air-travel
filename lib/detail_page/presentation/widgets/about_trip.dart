import 'package:flutter/material.dart';

class AboutTrip extends StatelessWidget {
  const AboutTrip({
    super.key,
    required this.title,
    required this.description,
  });

  final String title, description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 398,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFC4C4C4),
            blurRadius: 4,
            spreadRadius: 0,
            offset: Offset(1, 1),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xFF4B4B4B),
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            description,
            style: TextStyle(
              color: Color(0xFF4B4B4B),
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
