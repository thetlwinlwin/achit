import 'dart:ui';

import 'package:achit/passcode/passcode_field.dart';
import 'package:achit/utils/constant.dart';
import 'package:flutter/material.dart';

class PassCodePage extends StatelessWidget {
  const PassCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/photos/couple.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 20,
          sigmaY: 20,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SizedBox.expand(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Please Enter Password',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: kSecondaryColor,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                PassCodeField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
