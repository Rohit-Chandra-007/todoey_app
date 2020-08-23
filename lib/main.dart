import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/screens/task_screen.dart';

import 'model/task_data.dart';

void main() => runApp(TodoeyApp());

class TodoeyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
