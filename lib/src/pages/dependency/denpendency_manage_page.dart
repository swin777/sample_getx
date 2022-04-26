import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/dependency_controller.dart';
import 'package:sample_route_manage/src/pages/dependency/get_lazyput.dart';
import 'package:sample_route_manage/src/pages/dependency/get_put.dart';

class DenpendencyNamangePage extends StatelessWidget {
  const DenpendencyNamangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("의존성 주입"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Getput"), 
              onPressed: (){ 
                Get.to(
                  GetPut(),
                  binding: BindingsBuilder((){
                    Get.put(DependencyController());
                  }),
                );
              },
            ),
            ElevatedButton(
              child: Text("Get.lazyPut"), 
              onPressed: (){ 
                Get.to(
                  GetLazyPut(),
                  binding: BindingsBuilder((){
                    Get.lazyPut<DependencyController>(() => DependencyController());
                  }),
                );
              },
            ),
            ElevatedButton(
              child: Text("Get.putAsync"), 
              onPressed: (){ 
                Get.to(
                  GetPut(),
                  binding: BindingsBuilder((){
                    Get.putAsync<DependencyController>(
                      () async{
                        await Future.delayed(Duration(seconds:5));
                        return DependencyController();
                      }
                    );
                  }),
                );
              },
            ),
            ElevatedButton(
              child: Text("Get.create"), 
              onPressed: (){ 
                Get.to(
                  GetPut(),
                  binding: BindingsBuilder((){
                    Get.create<DependencyController>(() => DependencyController());
                  }),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}