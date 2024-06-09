import 'package:flutter/material.dart';
import 'package:todo_bloc/features/mainhome/view/home/bloc/cards_bloc.dart';

class BottomNav extends StatefulWidget {
  final CardsBloc bloc;
  const BottomNav({super.key, required this.bloc});

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late TextEditingController titleController;
  late TextEditingController descriptionController;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
    descriptionController = TextEditingController();
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                
                widget.bloc.add(AddCard(title: title, description: description));
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
