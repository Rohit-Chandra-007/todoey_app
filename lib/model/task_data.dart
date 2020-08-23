import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_app/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount => _tasks.length;

  void addTask(String taskName) {
    _tasks.add(Task(taskName: taskName));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    int index = _tasks.indexOf(task);
    _tasks.removeAt(index);
    notifyListeners();
  }
}
