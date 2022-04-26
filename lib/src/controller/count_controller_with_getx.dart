import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounControllerWithGetx extends GetxController {
  static CounControllerWithGetx get to => Get.find();

  int count = 0;

  void increase(String? id) {
    count++;
    if(id==null){
      update();
    }else{
      update([id]);
    }
  }
}