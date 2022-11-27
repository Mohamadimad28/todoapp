import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_model.dart';
import 'package:todoapp/providers/todo_provider.dart';
import 'package:todoapp/screens/all_task_screen.dart';
import 'package:todoapp/screens/complete_tasl_screen.dart';
import 'package:todoapp/screens/incomplete_task_screen.dart';
import 'package:todoapp/screens/new_task_screen.dart';
import 'package:todoapp/widgets/task_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // checkTask(TaskModel taskModel) {
  //   taskModel.isComplete = !taskModel.isComplete;
  //   setState(() {});
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Provider.of<TodoProvider>(context).appName,
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.list),
            ),
            Tab(
              icon: Icon(Icons.done),
            ),
            Tab(
              icon: Icon(Icons.cancel),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          AllTaskScreen(),
          CompleteTaskScreen(),
          InCompleteTaskScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Provider.of<TodoProvider>(context, listen: false).appName = 'Bti';
          // Provider.of<TodoProvider>(context, listen: false).notifyListeners();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return AddNewTasks();
            }),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
