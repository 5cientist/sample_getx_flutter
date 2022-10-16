import 'package:flutter/material.dart';
import 'package:sample_getx/controllers/count.controller.dart';
import 'package:get/get.dart';
import 'package:sample_getx/screens/screen_secound.dart';

class ScreenHome extends StatelessWidget {
  // const ScreenHome({super.key});
  final c = Get.put(CounterController());

  ScreenHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Obx(
            () => Text("Click ${c.count}"),
          ),
          leading: IconButton(
            onPressed: () {
              Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
            },
            icon: Icon(Icons.light),
          )),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go to Other"),
          onPressed: () {
            Get.to(ScreenScecound());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          c.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
