import 'package:flutter/material.dart';

class HeartClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();

    path.moveTo(size.width * 0.07852114, size.height * 0.5057519);
    path.lineTo(size.width * 0.5003750, size.height * 0.9878701);
    path.lineTo(size.width * 0.8619636, size.height * 0.5746260);
    path.lineTo(size.width * 0.9222284, size.height * 0.5057519);
    path.cubicTo(
        size.width * 1.022078,
        size.height * 0.3916377,
        size.width * 1.022078,
        size.height * 0.2066221,
        size.width * 0.9222284,
        size.height * 0.09250831);
    path.cubicTo(
        size.width * 0.8223784,
        size.height * -0.02160597,
        size.width * 0.6604898,
        size.height * -0.02160584,
        size.width * 0.5606398,
        size.height * 0.09250831);
    path.lineTo(size.width * 0.5003750, size.height * 0.1613818);
    path.lineTo(size.width * 0.4401102, size.height * 0.09250831);
    path.cubicTo(
        size.width * 0.3402602,
        size.height * -0.02160597,
        size.width * 0.1783716,
        size.height * -0.02160597,
        size.width * 0.07852114,
        size.height * 0.09250831);
    path.cubicTo(
        size.width * -0.02132886,
        size.height * 0.2066221,
        size.width * -0.02132886,
        size.height * 0.3916390,
        size.width * 0.07852114,
        size.height * 0.5057519);
    path.close();
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
