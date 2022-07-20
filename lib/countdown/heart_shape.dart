import 'package:achit/utils/constant.dart';
import 'package:achit/utils/custom_draw/heart_clipper.dart';
import 'package:flutter/material.dart';

import '../passcode/passcode_page.dart';

class HeartShape extends StatelessWidget {
  final double dimension;
  final double spacing;
  final String imageUrl;
  const HeartShape({
    Key? key,
    required this.dimension,
    required this.spacing,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push<void>(
          CustomPageRouting(
            child: const PassCodePage(),
          ),
        );
      },
      child: SizedBox(
        width: dimension + spacing,
        height: dimension,
        child: Stack(
          children: [
            Positioned(
              left: spacing,
              child: ClipPath(
                clipper: HeartClipper(),
                child: Container(
                  color: kMyColor,
                  height: dimension,
                  width: dimension,
                ),
              ),
            ),
            ClipPath(
              clipper: HeartClipper(),
              child: Image.asset(
                imageUrl,
                height: dimension,
                width: dimension,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
