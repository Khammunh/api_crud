// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  final int index;
  final Map item;
  const TodoCard({
    super.key,
    required this.index,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text(
            '${index + 1}',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        title: Text(
          item['title'],
        ),
        subtitle: Text(
          item['description'],
        ),
        trailing: PopupMenuButton(onSelected: (value) {
          if (value == 'edit') {
            // Open edit page
            navigateToEditPage(item);
          } else if (value == 'delete') {
            // Delete and refresh
            deleteById(id);
          }
        }, itemBuilder: (context) {
          return [
            const PopupMenuItem(
              child: Text('Edit'),
              value: 'edit',
            ),
            const PopupMenuItem(
              child: Text('Delete'),
              value: 'delete',
            ),
          ];
        }),
      ),
    );
  }
}
