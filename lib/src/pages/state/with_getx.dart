import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  WithGetX({Key? key}) : super(key: key);
  CounControllerWithGetx _counControllerWithGetx = Get.put(CounControllerWithGetx());

  Widget _button(String id) {
    return ElevatedButton(
      child: Text("+", style: TextStyle(fontSize: 30)),
      onPressed: () {
        _counControllerWithGetx.increase(id);
      }, 
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Getx", style: TextStyle(fontSize: 30)),
          GetBuilder<CounControllerWithGetx>(
            id: "first",
            builder: (controller) => Text("${controller.count}", style: TextStyle(fontSize: 50))
          ),
          GetBuilder<CounControllerWithGetx>(
            id: "second",
            builder: (controller) => Text("${controller.count}", style: TextStyle(fontSize: 50))
          ),
          _button("first"),
          _button("second")
        ],
      )
    );
  }
}
