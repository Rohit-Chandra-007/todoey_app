import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/model/task_data.dart';

String? _addNewTask;

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
              ),
              TextField(
                  textAlign: TextAlign.center,
                  autofocus: true,
                  onChanged: (newTask) => _addNewTask = newTask),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                padding: EdgeInsets.all(16.0),
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(_addNewTask);
                  Navigator.pop(context);
                },
                child: Text(
                  'ADD',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                color: Colors.lightBlueAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
