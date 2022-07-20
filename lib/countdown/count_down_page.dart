import 'package:achit/countdown/count.dart';
import 'package:achit/countdown/heart_shape.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';

class CountDownPage extends StatelessWidget {
  const CountDownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HeartShape(
                dimension: 200,
                spacing: 10,
                imageUrl: 'assets/photos/couple.jpeg',
              ),
              const SizedBox(
                height: 30,
                width: 5,
              ),
              const Text(
                'Together for',
                style: kCDsecondary,
              ),
              const Count(),
              Text(
                'Since ${kInitDate.day}/${kInitDate.month}/${kInitDate.year}',
                style: kCDsecondary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
