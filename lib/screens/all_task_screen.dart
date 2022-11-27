import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/providers/todo_provider.dart';
import 'package:todoapp/widgets/task_widget.dart';

class AllTaskScreen extends StatelessWidget {
  Function function1;

  AllTaskScreen(this.function1);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Provider.of<TodoProvider>(context).task.length,
        itemBuilder: (context, index) {
          return TaskWidget(Provider.of<TodoProvider>(context).task[index], function1);
        });
  }
}
