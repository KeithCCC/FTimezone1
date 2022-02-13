import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Tweets'),
            ),
            body: TaskList()));
  }
}

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TaskItem(label: "Load rocket with supplies1"),
        TaskItem(label: "Load rocket with supplies2"),
        TaskItem(label: "Load rocket with supplies3"),
        TaskItem(label: "Load rocket with supplies4"),
        TaskItem(label: "Load rocket with supplies5"),
      ],
    );
  }
}

class TaskItem extends StatelessWidget {
  final String label;

  const TaskItem({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(onChanged: null, value: false),
        Text(label),
      ],
    );
  }
}
