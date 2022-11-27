import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_model.dart';
import 'package:todoapp/providers/todo_provider.dart';

class TaskWidget extends StatelessWidget {
  TaskModel task;

  // Function function;

  TaskWidget(this.task, {Key? key}) : super(key: key);

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
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Provider.of<TodoProvider>(context, listen: false)
                    .deleteFromTasks(task);
              },
              icon: Icon(Icons.delete)),
          Expanded(
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
                // function(task);
                Provider.of<TodoProvider>(context, listen: false)
                    .updateTask(task);
              },
            ),
          ),
        ],
      ),
    );
  }
}
