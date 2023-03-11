import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home/constants.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField(
      {super.key,
      required this.text,
      required this.hint,
      this.onsaved,
      this.validator});
  final String text;
  final String hint;
  final Function(String? myString)? onsaved;
  final String Function(String? myString)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: oneColor),
      ),
      child: Padding(
        padding: EdgeInsets.all(3),
        child: TextFormField(
          onSaved: onsaved,
          validator: validator,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(
              color: threeColor,
            ),
            fillColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
