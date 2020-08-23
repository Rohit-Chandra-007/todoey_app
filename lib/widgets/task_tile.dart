import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({this.taskTitle, this.isChecked, this.checkboxCallback});

  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallback,
        value: isChecked,
      ),
    );
  }
}
