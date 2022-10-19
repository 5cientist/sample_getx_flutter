import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todo_getx_flutter/controller/todoController.dart';
import 'package:todo_getx_flutter/screens/screenTodo.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final TodoController todoController = Get.put(TodoController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX TODO LIST"),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Obx(() => (ListTile(
                    title: Text(
                      todoController.todos[index].text,
                      style: todoController.todos[index].done
                          ? const TextStyle(
                              color: Colors.red,
                              decoration: TextDecoration.lineThrough,
                            )
                          : const TextStyle(
                              color: Colors.black,
                            ),
                    ),
                    onTap: () {},
                    leading: Checkbox(
                      value: todoController.todos[index].done,
                      onChanged: (v) {
                        var changed = todoController.todos[index];
                        changed.done = v!;
                        todoController.todos[index] = changed;
                      },
                    ),
                  ))),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox();
          },
          itemCount: todoController.todos.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(
            ScreenTodo(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
