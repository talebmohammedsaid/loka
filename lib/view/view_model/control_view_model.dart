import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home/view/google_map.dart';
import 'package:home/view/home_view.dart';
import 'package:home/view/products/product_view.dart';
import 'package:home/view/users/users_view.dart';

class ControllViewModel extends GetxController {
  int _navigatorValue = 0;
  Widget _currentScreen = MapSample() as Widget;
  get currentScreen => _currentScreen;
  get navigatorValue => _navigatorValue;

  void changeSelectedValue(int selectedValue) {
    _navigatorValue = selectedValue;
    switch (selectedValue) {
      case 0:
        {
          _currentScreen = MapSample();
          break;
        }
      case 1:
        {
          _currentScreen = ProductView();
          break;
        }
      case 2:
        {
          _currentScreen = UsersView();
          break;
        }
    }
    update();
  }
}
