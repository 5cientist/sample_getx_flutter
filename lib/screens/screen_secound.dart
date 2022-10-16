import 'package:flutter/material.dart';
import 'package:sample_getx/controllers/count.controller.dart';
import 'package:get/get.dart';

class ScreenScecound extends StatelessWidget {
  ScreenScecound({super.key});
  final c = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counted value is : ${c.count}"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("gO bACK"),
            ),
          )
        ],
      ),
    );
  }
}
