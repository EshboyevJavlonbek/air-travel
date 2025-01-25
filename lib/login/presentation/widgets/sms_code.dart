import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';

class SmsCode extends StatelessWidget {
  const SmsCode({super.key});

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
          "Kodni kiriting",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 380,
          height: 166,
          child: Column(
            children: [
              Text(
                "Sms kodini kiriting",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(),
              Pinput(
                length: 4,
                defaultPinTheme: PinTheme(
                  width: 56,
                  height: 56,
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFEEEEEE),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.center,
          width: 380,
          height: 58,
          decoration: BoxDecoration(
            color: Color(0xFF3BB77E),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Text(
            "Tasdiqlash",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
