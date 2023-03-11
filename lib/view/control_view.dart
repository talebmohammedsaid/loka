import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:home/constants.dart';

import 'package:home/view/drawer_view.dart';
import 'package:home/view/login/login_view.dart';
import 'package:home/view/view_model/auth_view_model.dart';
import 'package:home/view/view_model/control_view_model.dart';

class ControllView extends StatelessWidget {
  const ControllView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ControllViewModel());
    return /* Obx(() {
      return (Get.find<AuthViewModel>().user == null)
          ? LoginView()
          :*/
        GetBuilder<ControllViewModel>(
            builder: (controller) => Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    leading: InkWell(
                        onTap: () {
                          NavBar();
                        },
                        child: Image.asset("assets/loka_logo3.jpg")),
                  ),
                  bottomNavigationBar: CustomNavigationAppBar(),
                  body: controller.currentScreen,
                  drawer: NavBar(),
                ));
  }
}

Widget CustomNavigationAppBar() {
  return GetBuilder<ControllViewModel>(
    init: Get.put(ControllViewModel()),
    builder: (controller) => BottomNavigationBar(
      onTap: (index) {
        controller.changeSelectedValue(index);
      },
      currentIndex: controller.navigatorValue,
      backgroundColor: oneColor,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
              color: Colors.white,
            ),
            label: "LOKA"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            label: "samssoum"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.safety_check,
              color: Colors.white,
            ),
            label: "hassounti"),
      ],
    ),
  );
}
