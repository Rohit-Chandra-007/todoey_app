import 'package:flutter/foundation.dart';

class Task extends ChangeNotifier {
  String _taskName;
  bool _isDone;

  Task({String taskName, bool isDone = false}) {
    this._taskName = taskName;
    this._isDone = isDone;
  }

  void toggleDone() {
    _isDone = !_isDone;
    notifyListeners();
  }

  String get taskName => _taskName;

  bool get isDone => _isDone;
}
