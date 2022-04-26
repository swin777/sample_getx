import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:sample_route_manage/src/pages/dependency/denpendency_manage_page.dart';
import 'package:sample_route_manage/src/pages/normal/first.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/pages/reactive_state_manage_page.dart';
import 'package:sample_route_manage/src/pages/simple_state_manage_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("라우트 관리 홈")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("일반적인 라우트"),
              onPressed: () {
                Get.to(() => FirstPage());
              },
            ),
            ElevatedButton(
              child: Text("Named 라우트"),
              onPressed: () {
                Get.toNamed('/first');
              },
            ),
            ElevatedButton(
              child: Text("Arguments 전달"),
              onPressed: () {
                Get.toNamed('/next', arguments: User("개발하는 남자", 22));
              },
            ),
            ElevatedButton(
              child: Text("동적 Url"),
              onPressed: () {
                Get.toNamed('/user/28357?name=개남&age=22');
              },
            ),
            ElevatedButton(
              child: Text("단순상태관리"),
              onPressed: () {
                Get.to(() => SimpleStateManagePage());
              },
            ),
            ElevatedButton(
              child: Text("반응형상태관리"),
              onPressed: () {
                Get.to(() => ReactiveStateManagePage());
              },
            ),
            ElevatedButton(
              child: Text("의존성주입"),
              onPressed: () {
                Get.to(() => DenpendencyNamangePage());
              },
            ),
            ElevatedButton(
              child: Text("바인딩 관리"),
              onPressed: () {
                Get.toNamed("/binding");
              },
            ),
          ],
        ),
      )
    );
  }
}

class User{
  String? name;
  int? age;
  User(this.name, this.age);
}