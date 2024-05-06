import 'package:crud/screen/add_page.dart';
import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Todo List'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: navigateToAddPage,
        // child: IconButton(
        //   onPressed: () {},
        //   icon: const Icon(
        //     Icons.add,
        //     size: 30,
        //   ),
        // ),
        label: const Text('Add Todo'),
      ),
    );
  }

  void navigateToAddPage() {
    final route = MaterialPageRoute(
      builder: (context) => const AddTodoPage(),
    );
    Navigator.push(context, route);
  }
}
