import 'package:flutter/material.dart';

class AddTodoPage extends StatelessWidget {
  const AddTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const TextField(
            decoration: InputDecoration(hintText: 'title'),
          ),
          const TextField(
            decoration: InputDecoration(hintText: 'Description'),
            maxLines: 8,
            minLines: 5,
            keyboardType: TextInputType.multiline,
          ),
          SizedBox(height: 50.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: () {},
            child: const Text(
              'Submit',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
  void submitData() {
    
  }
}
