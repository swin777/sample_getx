import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/binding/binding_admin.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_getx.dart';
import 'package:sample_route_manage/src/home.dart';
import 'package:sample_route_manage/src/pages/binding.dart';
import 'package:sample_route_manage/src/pages/named/first.dart';
import 'package:sample_route_manage/src/pages/named/second.dart';
import 'package:sample_route_manage/src/pages/next.dart';
import 'package:sample_route_manage/src/pages/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(
            name: '/', page: () => Home(), transition: Transition.leftToRight),
        GetPage(
            name: '/first',
            page: () => FirstNamedPage(),
            transition: Transition.leftToRight),
        GetPage(
            name: '/second',
            page: () => SecondNamedPage(),
            transition: Transition.leftToRight),
        GetPage(
            name: '/next',
            page: () => NextdPage(),
            transition: Transition.leftToRight),
        GetPage(
            name: '/user/:uid',
            page: () => UserPage(),
            transition: Transition.leftToRight),
        GetPage(
          name: '/binding', 
          page: () => BindingPage(),
          // binding: BindingsBuilder((){
          //   Get.put(CounControllerWithGetx());
          // }),
          binding: BindingAdmin()
        )
      ],
    );
  }
}
