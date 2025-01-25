import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class FullInformation extends StatefulWidget {
  const FullInformation({super.key});

  @override
  State<FullInformation> createState() => _FullInformationState();
}

class _FullInformationState extends State<FullInformation> {
  File? file;

  Future<void> pickImage(ImageSource source) async {
    final imagePicker = ImagePicker();
    var image = await imagePicker.pickImage(source: source);
    if (image != null) {
      setState(() {
        file = File(image.path);
      });
    }
  }

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
      extendBody: true,
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SizedBox(
          width: 380,
          height: 460,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 140,
                    height: 140,
                    child: file==null? Image.asset("assets/myassets/profile.png"): Image.file(file!),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: ElevatedButton(
                      onPressed: () => pickImage(ImageSource.camera),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black.withValues(alpha: 0.7),
                        minimumSize: Size(30, 30),
                        maximumSize: Size(30, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        )
                      ),
                      child: Center(child: Icon(Icons.camera_alt,color: Colors.white,size: 15,),),
                    ),
                  ),
                ],
              ),
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
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon:
                          SvgPicture.asset("assets/myassets/down-arrow_2.svg"),
                    ),
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
            "Saqlash",
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
