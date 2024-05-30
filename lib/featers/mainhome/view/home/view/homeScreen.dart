import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todo_redux/featers/mainhome/view/home/widget/Cards.dart';
import 'package:todo_redux/redux/models/CardListener.dart';
import 'package:todo_redux/redux/state.dart';
import 'package:todo_redux/featers/mainhome/view/home/widget/BottomNav.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showAddCardModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const BottomNav(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo Redux'),
      ),
      body: StoreConnector<ReduxAppState, List<CardListener>>(
        converter: (store) => store.state.appState.cardLister,
        builder: (context, cardLister) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Wrap(
                  children: List.generate(
                      cardLister.length,
                      (index) => Cards(
                            key: Key(cardLister[index].id.toString()),
                            title: cardLister[index].title,
                            id: cardLister[index].id,
                            description: cardLister[index].descriptions,
                          )),
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddCardModal(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}
