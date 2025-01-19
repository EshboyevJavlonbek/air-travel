import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 428,
      height: 48,
      color: Color(0xFFFFFFFF),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavBarItems(title: "Home", image: "assets/icons/home.svg"),
          BottomNavBarItems(
              title: "Cart", image: "assets/icons/shopping-bag.svg"),
          BottomNavBarItems(title: "Orders", image: "assets/icons/orders.svg"),
          BottomNavBarItems(title: "Wallet", image: "assets/icons/wallet.svg"),
          BottomNavBarItems(
              title: "Profile", image: "assets/icons/profile.svg"),
        ],
      ),
    );
  }
}

class BottomNavBarItems extends StatelessWidget {
  const BottomNavBarItems({
    super.key,
    required this.title,
    required this.image,
  });

  final String title, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset(
          image,
          width: 19,
          height: 20,
        ),
        Text(
          title,
          style: TextStyle(
            color: Color(0xFF9E9E9E),
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
