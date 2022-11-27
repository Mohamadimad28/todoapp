import 'package:flutter/material.dart';
import 'package:todoapp/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  TaskModel task;
  Function function;

  TaskWidget(this.task, this.function, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      width: 400,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: task.isComplete ? Colors.blue : Colors.red,
      ),
      child: CheckboxListTile(
        title: Text(
          task.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        activeColor: Colors.black,
        value: task.isComplete,
        onChanged: (v) {
          function(task);
        },
      ),
    );
  }
}
