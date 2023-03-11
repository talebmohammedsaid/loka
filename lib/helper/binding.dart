import 'package:get/get.dart';
import 'package:home/helper/local_storage_data.dart';
import 'package:home/view/view_model/auth_view_model.dart';
import 'package:home/view/view_model/control_view_model.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
    Get.lazyPut(() => ControllViewModel());
    Get.lazyPut(() => LocalStorageData());
    
  }
}
