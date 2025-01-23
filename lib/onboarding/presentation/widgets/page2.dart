import 'package:flutter/material.dart';


class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> _texts = [
    "We provide high quality products just for you",
    "Your satisfaction is our number one priority!",
    "Let's fulfill your house needs with Funica right now!",
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _onButtonPressed() {
    if (_currentPage < 2) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      print("Xatolik bo'ldi!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _pageController,
          onPageChanged: _onPageChanged,
          children: [
            Image.asset(
              "assets/images/onboarding/onboarding_2.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/onboarding/onboarding_3.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/onboarding/onboarding_4.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            padding: const EdgeInsets.fromLTRB(24, 32, 24, 48),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _texts[_currentPage],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xff4B4B4B),
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.none,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                        (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == _currentPage
                            ? const Color(0xff3BB77E)
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: _onButtonPressed,
                  child: Container(
                    width: 330,
                    height: 58,
                    decoration: BoxDecoration(
                      color: const Color(0xff3BB77E),
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(8, 4),
                          blurRadius: 8,
                          spreadRadius: 0,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        _currentPage < 2 ? "Keyingisi" : "Boshlash",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}