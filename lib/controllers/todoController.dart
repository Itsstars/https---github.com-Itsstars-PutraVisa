import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter_starter/controllers/auth_controller.dart';

import 'package:flutter_starter/models/todo.dart';
import 'package:flutter_starter/services/database.dart';

class TodoController extends GetxController {
  Rx<List<TodoModel>> todoList = Rx<List<TodoModel>>();

  List<TodoModel> get todos => todoList.value;

  String useruid;
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onInit() {
    String uid = auth.currentUser.uid;
    todoList
        .bindStream(Database().todoStream(uid)); //stream coming from firebase
  }
}
