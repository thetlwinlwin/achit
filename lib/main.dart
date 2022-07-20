import 'package:achit/error_page.dart';
import 'package:flutter/material.dart';

import 'intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MTTK',
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 550) {
            return const IntroPage();
          } else {
            return const ErrorPage();
          }
        },
      ),
    );
  }
}
