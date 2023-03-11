import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Maps ",
          style: TextStyle(color: Colors.blue, fontSize: 50),
        ),
      ),
    );
  }
}
