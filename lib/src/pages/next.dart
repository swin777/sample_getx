import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home.dart';

class NextdPage extends StatelessWidget {
  const NextdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${(Get.arguments as User).name} : ${(Get.arguments as User).age}"),
            ElevatedButton(
              child: Text("뒤로 이동"),
              onPressed: (){
                Get.back();
              },
            ),
          ],
        ),
      )
    );
  }
}