import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:flutter_starter/controllers/auth_controller.dart';
import 'package:flutter_starter/controllers/todoController.dart';
import 'package:flutter_starter/services/database.dart';
import 'package:flutter_starter/widgets/todo_card.dart';

class Home extends StatelessWidget {
  final TextEditingController _todoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (controller) => controller?.firestoreUser?.value?.uid == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.red[900],
                ),
                body: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Keep track of papers Accquired:",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(20),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: _todoController,
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  if (_todoController.text != "") {
                                    Database().addTodo(_todoController.text,
                                        controller.firestoreUser.value.uid);
                                    _todoController.clear();
                                  }
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                      Text(
                        "Papers Collected",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GetX<TodoController>(
                        init: Get.put<TodoController>(TodoController()),
                        builder: (TodoController todoController) {
                          if (todoController != null &&
                              todoController.todos != null) {
                            return Expanded(
                              child: ListView.builder(
                                itemCount: todoController.todos.length,
                                itemBuilder: (_, index) {
                                  return TodoCard(
                                      uid: controller.firestoreUser.value.uid,
                                      todo: todoController.todos[index]);
                                },
                              ),
                            );
                          } else {
                            return Text("loading...");
                          }
                        },
                      )
                    ],
                  ),
                )));
  }
}
