import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc/features/mainhome/view/home/bloc/cards_bloc.dart';



class Cardsss extends StatelessWidget {
  const Cardsss({
    super.key,
    required this.title,
    required this.id,
    required this.description,
  });

  final String title;
  final int id;
  final String description;

  void onDeleteCard(BuildContext context) {
    BlocProvider.of<CardsBloc>(context).add(RemoveItemsCard(index: id));
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(UniqueKey().toString()),
      onDismissed: (direction) => onDeleteCard(context),
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
