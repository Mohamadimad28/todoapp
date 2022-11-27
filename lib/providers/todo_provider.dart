import 'package:flutter/material.dart';
import 'package:todoapp/models/task_model.dart';

class TodoProvider extends ChangeNotifier{
  String appName = 'Todo App';
  List<TaskModel> task = [
    TaskModel('Go to iug', true),
    TaskModel('eating launch ', false),
    TaskModel('praying duhur', true),
    TaskModel('watching tv', false),
    TaskModel('praying fajer', true),
  ];
}
