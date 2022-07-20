import 'package:achit/landing/pages.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: const [
          PageOne(),
          PageTwo(),
          PageThree(),
          PageFour(),
          PageFive(),
        ],
      ),
    );
  }
}
