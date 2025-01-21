import 'package:flutter/material.dart';

class FlightItem extends StatelessWidget {
  const FlightItem({
    super.key,
    required this.from,
    required this.to,
    required this.hour,
  });

  final String from, to, hour;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 284,
      height: 123,
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
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 47),
              Text(
                "Uchish",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 137),
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
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 47),
              Text(
                "Qayerdan",
                style: TextStyle(
                  color: Color(0xFFC4C4C4),
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 98),
              Text(
                from,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              SizedBox(width: 47),
              Text(
                "Qayerga",
                style: TextStyle(
                  color: Color(0xFFC4C4C4),
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 105),
              Text(
                to,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
