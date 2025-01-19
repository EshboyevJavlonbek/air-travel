import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainImage extends StatelessWidget {
  const MainImage({
    super.key,
    required this.image,
    required this.duration,
    required this.landing,
    required this.flight,
  });

  final String image, landing, flight, duration;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(image),
            width: 285,
            height: 169,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 27,
          left: 22,
          child: Container(
            padding: EdgeInsets.only(top: 2,bottom: 2,left: 10,right: 10,),
            height: 23,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color(0xFF3BB77E),
            ),
            child: Text(
              duration,
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
        ),
        Positioned(
          top: 25,
          left: 241,
          child: Container(
            alignment: Alignment.center,
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: Color(0xFF3BB77E),
              borderRadius: BorderRadius.circular(100),
            ),
            child: SvgPicture.asset(
              "assets/icons/heart.svg",
              width: 16,
              height: 16,
            ),
          ),
        ),
        Positioned(
          top: 139,
          left: 55,
          child: Container(
            height: 23,
            width: 186,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  "assets/icons/flight.svg",
                  width: 20,
                  height: 17,
                ),
                Container(
                  height: 23,
                  padding: EdgeInsets.only(top: 2,bottom: 2,left: 10,right: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFF3BB77E),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    flight,
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SvgPicture.asset(
                  "assets/icons/landing.svg",
                  width: 20,
                  height: 17,
                ),
                Container(
                  height: 23,
                  padding: EdgeInsets.only(top: 2,bottom: 2,left: 10,right: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFF3BB77E),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    landing,
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}