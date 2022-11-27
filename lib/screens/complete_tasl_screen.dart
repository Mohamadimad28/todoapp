import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/providers/todo_provider.dart';
import 'package:todoapp/widgets/task_widget.dart';

class CompleteTaskScreen extends StatelessWidget {
  // Function function2;

  CompleteTaskScreen( {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Provider.of<TodoProvider>(context).task.where((element) => element.isComplete).length,
        itemBuilder: (context, index) {
          return TaskWidget(
              Provider.of<TodoProvider>(context).task.where((element) => element.isComplete).toList()[index],);
        });
  }
}
