import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_getx.dart';

class BindingPage extends GetView<CounControllerWithGetx> {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounControllerWithGetx>(builder: (_){
              return Text(_.count.toString(), style: TextStyle(fontSize: 40));
            }),
            // Obx(
            //   () => Text(
            //     controller.count.toString(), 
            //     style: TextStyle(fontSize: 40)
            //   )
            // ),
            ElevatedButton(
              child: Text("+", style: TextStyle(fontSize: 30)),
              onPressed: () {
                //Get.find<CounControllerWithGetx>().increase(null);
                //CounControllerWithGetx.to.increase(null);
                controller.increase(null);
              }, 
            )
          ],
        ),
      ),
    );
  }
}