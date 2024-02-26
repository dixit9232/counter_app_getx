import 'package:counter_app_getx/model/counter_conroller.dart';
import 'package:counter_app_getx/view/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
  Get.put(CounterController());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(theme: ThemeData(useMaterial3: false),home: CounterView(),title:'Counter App',);
  }
}
