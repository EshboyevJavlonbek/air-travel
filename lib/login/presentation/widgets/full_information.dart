import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FullInformation extends StatelessWidget {
  const FullInformation({super.key});

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
        title: Text(
          "Malumotlarni kiriting",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SizedBox(
          width: 380,
          height: 460,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/myassets/profile.png"),
              SizedBox(
                width: 380,
                height: 56,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Ismingiz",
                    hintStyle: TextStyle(
                      color: Color(0xFF9E9E9E),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    filled: true,
                    fillColor: Colors.grey.withValues(alpha: 0.3),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                width: 380,
                height: 56,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Familyangiz",
                    hintStyle: TextStyle(
                      color: Color(0xFF9E9E9E),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    filled: true,
                    fillColor: Colors.grey.withValues(alpha: 0.3),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                width: 380,
                height: 56,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "+998 99 919-31-11",
                    hintStyle: TextStyle(
                      color: Color(0xFF9E9E9E),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    filled: true,
                    fillColor: Colors.grey.withValues(alpha: 0.3),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                width: 380,
                height: 56,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Viloyatingiz",
                    hintStyle: TextStyle(
                      color: Color(0xFF9E9E9E),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    filled: true,
                    fillColor: Colors.grey.withValues(alpha: 0.3),
                    border: InputBorder.none,
                    suffixIcon: IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/myassets/down-arrow_2.svg"),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        width: 380,
        height: 58,
        decoration: BoxDecoration(
          color: Color(0xFF3BB77E),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          "Saqlash",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
