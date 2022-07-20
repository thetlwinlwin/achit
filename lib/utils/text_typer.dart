import 'package:flutter/material.dart';

import 'constant.dart';

class TypeText extends StatefulWidget {
  final String string;
  final int duration;
  final TextStyle style;
  const TypeText({
    Key? key,
    required this.string,
    required this.duration,
    required this.style,
  }) : super(key: key);

  @override
  State<TypeText> createState() => _TypeTextState();
}

class _TypeTextState extends State<TypeText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _val;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.duration),
    );
    _val = IntTween(begin: 0, end: widget.string.length).animate(_controller);
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
    return AnimatedBuilder(
      animation: _val,
      builder: (context, child) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Text(
          widget.string.substring(0, _val.value),
          style: widget.style,
        ),
      ),
    );
  }
}
