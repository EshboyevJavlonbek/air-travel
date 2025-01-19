import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalendarItem extends StatelessWidget {
  const CalendarItem({
    super.key,
    required this.title,
    required this.duration,
  });

  final String title, duration;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 1,
        right: 4,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          border: Border.all(
            color: Color(0xFF3BB77E),
            width: 1,
          )),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Color(0xFF3BB77E),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              "assets/icons/calendar.svg",
              width: 14,
              height: 14,
              fit: BoxFit.none,
            ),
          ),
          SizedBox(width: 2),
          Column(
            children: [
              Text(
                duration,
                style: TextStyle(
                    color: Color(0xFF3BB77E),
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
              Text(
                "KUN",
                style: TextStyle(
                  color: Color(0xFF3BB77E),
                  fontWeight: FontWeight.w600,
                  fontSize: 4,
                ),
              ),
            ],
          ),
          SizedBox(width: 2),
          Text(
            title,
            style: TextStyle(
              color: Color(0xFF3BB77E),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
