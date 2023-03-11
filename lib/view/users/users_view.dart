import 'package:flutter/material.dart';

class UsersView extends StatelessWidget {
  const UsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Utilisateur ",
          style: TextStyle(color: Colors.red, fontSize: 50),
        ),
      ),
    );
  }
}
