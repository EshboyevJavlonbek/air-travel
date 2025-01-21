import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 1,right: 3 ),
      height: 19,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFF3BB77E),
          width: 1,
        )
      ),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 15,
            decoration: BoxDecoration(
              color: Color(0xFF3BB77E),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              "assets/icons/tick.svg",
              fit: BoxFit.none,
            ),
          ),
          SizedBox(width: 3),
          Text(
            title,
            style: TextStyle(
              color: Color(0xFF3BB77E),
              fontSize: 10,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
