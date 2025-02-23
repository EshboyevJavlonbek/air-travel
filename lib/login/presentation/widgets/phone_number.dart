import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/back-arrow.svg",
            fit: BoxFit.none,
          ),
        ),
      ),
      body: Column(
        spacing: 30,
        children: [
          Image.asset("assets/myassets/flutter.png"),
          Text(
            "Ro'yxatdan o'tish",
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
          Center(
            child: Column(
              spacing: 30,
              children: [
                SizedBox(
                  width: 380,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefix: Icon(
                        Icons.phone,
                      ),
                      hintText: "Telefon raqamingizni kiriting",
                      filled: true,
                      fillColor: Colors.grey.withValues(alpha: 0.3),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 380,
                  height: 58,
                  decoration: BoxDecoration(
                    color: Color(0xFF3BB77E),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    "Ro'yhatdan o'tish",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
