import 'package:flutter/material.dart';

class HotelItem extends StatelessWidget {
  const HotelItem({
    super.key,
    required this.hour,
  });

  final String hour;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 284,
      height: 109,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(20),
            topRight: Radius.circular(5),
            topLeft: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              spreadRadius: 0,
              offset: Offset(0, 0),
            )
          ]),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 28),
              Text(
                "Mehmonxona",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 105),
              Text(
                hour,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 28),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  "assets/images/places/paris.png",
                  width: 77,
                  height: 68,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New Madina Hotel",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    maxLines: 3,
                    """New Madinah mehmonxonasining
                     har bir xonasida vanna va xalat
                     bilan jihozlangan shaxsiy ... """,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
