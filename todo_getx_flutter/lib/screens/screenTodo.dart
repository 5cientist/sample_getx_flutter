import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx_flutter/controller/todoController.dart';
import 'package:todo_getx_flutter/models/todoModel.dart';
import 'package:todo_getx_flutter/screens/screen_home.dart';

class ScreenTodo extends StatelessWidget {
  final TodoController todoController = Get.put(TodoController());
  ScreenTodo({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: TextField(
                    controller: textEditingController,
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: 'What do you want to acomplish  ? ',
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    style: TextStyle(
                      fontSize: 25,
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLines: 999,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.off(ScreenHome());
                      },
                      child: Text("Cancel"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        todoController.todos
                            .add(TodoModel(text: textEditingController.text));
                        Get.to(ScreenHome());
                      },
                      child: Text("Add"),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
