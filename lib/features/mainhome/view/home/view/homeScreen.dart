import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc/features/mainhome/view/home/bloc/cards_bloc.dart';
import 'package:todo_bloc/features/mainhome/view/home/widget/Cards.dart';
import '../widget/bottomNav.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CardsBloc(),
      child: BlocBuilder<CardsBloc, CardsState>(
        builder: (context, state) {
          var bloc = BlocProvider.of<CardsBloc>(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text('Todo Bloc'),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  bloc.cardss.length,
                  (int index) => Cardsss(
                    title: bloc.cardss[index].title,
                    id: index,
                    description: bloc.cardss[index].descript,
                  ),
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => _showAddCardModal(context, bloc),
              child: const Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }

  void _showAddCardModal(BuildContext context, CardsBloc bloc) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return BottomNav(bloc: bloc);
        },
      );
    });
  }
}
