import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TimerOfDiscount extends StatelessWidget {
  const TimerOfDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      width: 400,
      height: 56,
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/discount.svg",
            width: 30,
            height: 30,
          ),
          Text(
            "Shoshiling",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}