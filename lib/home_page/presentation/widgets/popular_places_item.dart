import 'package:flutter/material.dart';

class PopularPlacesItem extends StatelessWidget {
  const PopularPlacesItem(
      {super.key, required this.title, required this.image});

  final String title, image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(image),
            width: 104,
            height: 52,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}