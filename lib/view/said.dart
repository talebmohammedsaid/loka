import 'package:flutter/material.dart';

class SaidView extends StatelessWidget {
  const SaidView({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        color: Colors.red,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: w * 0.2,
                  decoration: BoxDecoration(color: Colors.red),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
