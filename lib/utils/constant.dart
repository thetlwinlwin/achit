import 'package:flutter/material.dart';

const Map<String, String> kCode = {
  'pin1': '1',
  'pin2': '5',
  'pin3': '1',
  'pin4': '8',
};

// NOTE: change to real url in .env file.
const String kUrl = 'my fake url';
const Color kMyColor = Color(0xFFfc86aa);
const Color kSecondaryColor = Color(0xff07faee);
const String kIntroUrl = 'assets/intro.mp4';
const double kPlaySpeed = 2.0;
const Duration kDelayDuration = Duration(milliseconds: 600);
DateTime kInitDate = DateTime(2021, 12, 18, 15, 10);
const Size kSize = Size(50, 50);
const BorderRadius kBorder = BorderRadius.all(Radius.circular(15));

const InputDecoration kInputDecor = InputDecoration(
  filled: true,
  fillColor: Colors.black38,
  helperText: '',
  contentPadding: EdgeInsets.symmetric(vertical: 20),
  enabledBorder: OutlineInputBorder(
    borderRadius: kBorder,
    borderSide: BorderSide(color: Colors.transparent),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: kBorder,
    borderSide: BorderSide(color: kMyColor),
  ),
);

const TextStyle kOverLayText = TextStyle(
  color: kSecondaryColor,
  fontWeight: FontWeight.w700,
  fontSize: 20,
);

const TextStyle kCDsecondary = TextStyle(
  color: Colors.grey,
  fontSize: 20,
);

class CustomPageRouting extends PageRouteBuilder {
  final Widget child;
  CustomPageRouting({required this.child})
      : super(
          transitionDuration: kDelayDuration,
          pageBuilder: (context, animation, secondaryAnimation) => child,
        );
}
