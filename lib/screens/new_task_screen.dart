import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/providers/todo_provider.dart';

class AddNewTasks extends StatelessWidget {
  const AddNewTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String cont = '';
    return Scaffold(
      appBar: AppBar(
        title: Text('New Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                cont = value;
              },
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )),
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<TodoProvider>(context, listen: false)
                      .addNewTask(cont);
                  // Navigator.of(context).pop();

                },
                child: Text('Add New Tasks')),
          ],
        ),
      ),
    );
  }
}
