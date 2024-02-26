import 'package:counter_app_getx/model/counter_conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterView extends StatelessWidget {
   CounterView({super.key});
CounterController counterController = Get.find();
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
               () {
                return Text(counterController.counter.value.toString(),style: TextStyle(fontSize: 50),);
              }
            ),
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {
            counterController.incrementCounter();
          }, child: const Icon(Icons.add)),
    );
  }
}
