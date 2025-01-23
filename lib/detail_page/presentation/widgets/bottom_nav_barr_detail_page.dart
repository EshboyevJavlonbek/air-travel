import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarrDetailPage extends StatelessWidget {
  const BottomNavBarrDetailPage({
    super.key,
    required this.price,
  });

  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      color: Colors.white,
      width: 380,
      height: 78,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 380,
            height: 1,
            color: Color(0xFFEEEEEE),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Jami qiymat",
                    style: TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    price,
                    style: TextStyle(
                      color: Color(0xFF3BB77E),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Container(
                width: 280,
                height: 58,
                decoration: BoxDecoration(
                  color: Color(0xFF3BB77E),
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    spreadRadius: 0,
                    offset: Offset(4, 8)
                  )]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/shopping-bag2.svg",
                      fit: BoxFit.none,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Buyurtma berish",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
