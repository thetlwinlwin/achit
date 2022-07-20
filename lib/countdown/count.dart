import 'package:achit/utils/constant.dart';
import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  const Count({
    Key? key,
  }) : super(key: key);

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  late String _beenTogther;
  @override
  void initState() {
    super.initState();
    getDays();
  }

  void getDays() {
    final date = DateTime.now().difference(kInitDate);
    final days = date.inDays;
    final hrs = date.inHours % 24;
    final mins = date.inMinutes % 60;
    _beenTogther = '$days days $hrs hr(s) $mins min(s)';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Text(
        _beenTogther,
        style: const TextStyle(
          color: kMyColor,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    );
  }
}
