import 'package:crud/screen/todo_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyAPP(),
  );
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoListPage(),
    );
  }
}
