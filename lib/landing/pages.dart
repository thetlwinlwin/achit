import 'package:achit/utils/custom_draw/leaf_paint.dart';
import 'package:achit/utils/custom_draw/star_paint.dart';
import 'package:flutter/material.dart';

import '../countdown/count_down_page.dart';
import '../utils/constant.dart';
import '../utils/custom_draw/flower_paint.dart';
import '../utils/custom_fade.dart';
import '../utils/text_typer.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: TypeText(
        duration: 3,
        string: 'There is a Selfish Stupid Boy.',
        style: TextStyle(
          color: kMyColor,
          fontSize: 35,
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: TypeText(
        duration: 3,
        string: 'He fell in love with',
        style: TextStyle(
          color: kMyColor,
          fontSize: 35,
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: TypeText(
        duration: 3,
        string: 'THIS PRETTY ANGEL',
        style: TextStyle(
          fontSize: 35,
          color: kMyColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class PageFour extends StatelessWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: CustomFade(
              seconds: 4,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: kBorder,
                  boxShadow: [
                    BoxShadow(
                      color: kMyColor,
                      offset: Offset(5, 5),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: kBorder,
                  child: Image.asset(
                    'assets/photos/her.jpeg',
                    height: 400,
                    width: 300,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 80,
            child: CustomPaint(
              painter: StarPainter(),
              size: kSize,
            ),
          ),
          Positioned(
            left: 60,
            top: 310,
            child: CustomPaint(
              painter: FlowerPainter(),
              size: kSize,
            ),
          ),
          Positioned(
            left: 430,
            top: 470,
            child: CustomPaint(
              painter: LeafPainter(),
              size: kSize,
            ),
          ),
          Positioned(
            left: 310,
            top: 124,
            child: CustomPaint(
              painter: FlowerPainter(),
              size: kSize,
            ),
          ),
          Positioned(
            left: 250,
            top: 530,
            child: CustomPaint(
              painter: StarPainter(),
              size: kSize,
            ),
          ),
          Positioned(
            left: 30,
            top: 650,
            child: CustomPaint(
              painter: StarPainter(),
              size: kSize,
            ),
          ),
        ],
      ),
    );
  }
}

class PageFive extends StatelessWidget {
  const PageFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 100,
      color: kMyColor,
      onPressed: () {
        Navigator.of(context).pushReplacement(
          CustomPageRouting(
            child: const CountDownPage(),
          ),
        );
      },
      icon: const Icon(
        Icons.arrow_forward_rounded,
      ),
    );
  }
}
