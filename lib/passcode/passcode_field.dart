import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../notes/notes_page.dart';
import '../utils/constant.dart';

class PassCodeField extends StatefulWidget {
  const PassCodeField({Key? key}) : super(key: key);

  @override
  State<PassCodeField> createState() => _PasscodeState();
}

class _PasscodeState extends State<PassCodeField> {
  late FocusNode firstP;
  late FocusNode secondP;
  late FocusNode thirdP;
  late FocusNode fourthP;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    firstP = FocusNode();
    secondP = FocusNode();
    thirdP = FocusNode();
    fourthP = FocusNode();
  }

  @override
  void dispose() {
    firstP.dispose();
    secondP.dispose();
    thirdP.dispose();
    fourthP.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 60,
            child: TextFormField(
              validator: (String? val) {
                return val!.isNotEmpty && val == kCode['pin1'] ? null : '';
              },
              focusNode: firstP,
              onFieldSubmitted: (value) {
                if (value.length == 1) {
                  secondP.requestFocus();
                }
              },
              textAlign: TextAlign.center,
              cursorColor: kSecondaryColor,
              decoration: kInputDecor,
              style: kOverLayText,
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
          SizedBox(
            width: 60,
            child: TextFormField(
              validator: (String? val) {
                return val!.isNotEmpty && val == kCode['pin2'] ? null : '';
              },
              focusNode: secondP,
              onFieldSubmitted: (value) {
                if (value.length == 1) {
                  thirdP.requestFocus();
                }
              },
              textAlign: TextAlign.center,
              cursorColor: kSecondaryColor,
              decoration: kInputDecor,
              style: kOverLayText,
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
          SizedBox(
            width: 60,
            child: TextFormField(
              validator: (String? val) {
                return val!.isNotEmpty && val == kCode['pin3'] ? null : '';
              },
              focusNode: thirdP,
              onFieldSubmitted: (value) {
                if (value.length == 1) {
                  fourthP.requestFocus();
                }
              },
              textAlign: TextAlign.center,
              cursorColor: kSecondaryColor,
              decoration: kInputDecor,
              style: kOverLayText,
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
          SizedBox(
            width: 60,
            child: TextFormField(
              validator: (String? val) {
                return val!.isNotEmpty && val == kCode['pin4'] ? null : '';
              },
              focusNode: fourthP,
              onFieldSubmitted: (value) {
                if (value.length == 1) {
                  checkPass(context);
                }
              },
              textAlign: TextAlign.center,
              cursorColor: kSecondaryColor,
              decoration: kInputDecor,
              style: kOverLayText,
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
        ],
      ),
    );
  }

  void checkPass(context) {
    final validate = _formKey.currentState!.validate();
    if (!validate) {
      _formKey.currentState!.reset();
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red.shade600,
          content: const Text(
            'Wrong Passcode',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
    } else {
      Navigator.of(context).push<void>(
        CustomPageRouting(
          child: const NotesPage(),
        ),
      );
    }
  }
}
