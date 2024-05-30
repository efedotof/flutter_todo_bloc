import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todo_redux/redux/actions/main_actions.dart';
import 'package:todo_redux/redux/state.dart';

class Cards extends StatelessWidget {
  const Cards({
    super.key,
    required this.title,
    required this.id,
    required this.description,
  });

  final String title;
  final int id;
  final String description;


void _onDeleteCard(BuildContext context) {
    StoreProvider.of<ReduxAppState>(context).dispatch(RemoveItemAction(id: id));
  }


  @override
  Widget build(BuildContext context) {
    return Dismissible(

      key: Key(id.toString()),
      onDismissed: (direction) {
       
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Card(
          
          elevation: 6,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 10),
                Text(description),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
