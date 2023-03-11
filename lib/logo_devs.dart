import 'package:flutter/material.dart';

class LogoSdev extends StatelessWidget {
  const LogoSdev({Key? key, required this.nameDevloper}) : super(key: key);
  final String nameDevloper;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      height: 120,
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20 / 0.5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "By Dev'S Copyright © 2022 All rights reserved",
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.normal,
                fontSize: 12),
          ),
          Container(
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(
              'assets/logo_tms_rond.png',
              height: 30,
              width: 30,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
