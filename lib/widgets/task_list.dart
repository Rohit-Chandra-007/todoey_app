import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/model/task_data.dart';
import 'package:todoey_app/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemCount: taskData.taskCount,
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        itemBuilder: (context, index) => Dismissible(
          key: ValueKey(index),
          // Specify the direction to swipe and delete
          direction: DismissDirection.startToEnd,
          background: Container(
            color: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: AlignmentDirectional.centerStart,
            child: Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
          onDismissed: (direction) {
            taskData.deleteTask(taskData.tasks[index]);
          },
          child: TaskTile(
            taskTitle: taskData.tasks[index].taskName,
            isChecked: taskData.tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              taskData.updateTask(taskData.tasks[index]);
            },
          ),
        ),
      ),
    );
  }
}
