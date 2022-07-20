import 'package:achit/utils/constant.dart';
import 'package:flutter/material.dart';

class CustomFade extends StatefulWidget {
  final Widget child;
  final int seconds;
  const CustomFade({
    Key? key,
    required this.child,
    required this.seconds,
  }) : super(key: key);

  @override
  State<CustomFade> createState() => _CustomFadeState();
}

class _CustomFadeState extends State<CustomFade>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacity;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.seconds),
    );
    _opacity = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    Future.delayed(
      kDelayDuration,
      () => _controller.forward(),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _opacity,
      child: widget.child,
    );
  }
}
