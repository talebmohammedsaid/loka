import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:home/helper/binding.dart';
import 'package:home/view/control_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(LocaApp());
}

/**Ved's */

class LocaApp extends StatelessWidget {
  const LocaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialBinding: Binding(),
        debugShowCheckedModeBanner: false,
        home: ControllView()
        //LoginView(),
        );
  }
}
