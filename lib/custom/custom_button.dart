import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:home/custom/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.ontap,
      required this.height,
      this.widht,
      this.color});
  final String text;
  final Function() ontap;
  final double height;
  final double? widht;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ontap,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: color,
          ),
          width: widht,
          height: height,
          child: CustomText(
            text: text,
            color: Colors.white,
            alignment: Alignment.center,
          ),
        ));
  }
}
