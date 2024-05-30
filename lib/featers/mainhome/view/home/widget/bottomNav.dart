import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todo_redux/redux/actions/main_actions.dart';
import 'package:todo_redux/redux/state.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: titleController,
            decoration: const InputDecoration(
              labelText: 'Title',
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: descriptionController,
            decoration: const InputDecoration(
              labelText: 'Description',
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              final title = titleController.text;
              final description = descriptionController.text;

              if (title.isNotEmpty && description.isNotEmpty) {
                StoreProvider.of<ReduxAppState>(context).dispatch(AddItems(title: title, description: description));
                Navigator.of(context).pop();
              }
            },
            child: const Text('Add Card'),
          ),
        ],
      ),
    );
  }
}
