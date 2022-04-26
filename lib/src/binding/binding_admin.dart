import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_getx.dart';

class BindingAdmin implements Bindings {
  @override
  void dependencies() {
    Get.put(CounControllerWithGetx());
  }
}