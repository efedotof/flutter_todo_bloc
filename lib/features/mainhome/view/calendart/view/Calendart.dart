import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc/features/mainhome/view/calendart/bloc/counter_bloc_bloc.dart';

@RoutePage()
class CalendartScreen extends StatefulWidget {
  const CalendartScreen({super.key});

  @override
  State<CalendartScreen> createState() => _CalendartScreenState();
}

class _CalendartScreenState extends State<CalendartScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBlocBloc(),
      child: BlocBuilder<CounterBlocBloc, int>(
        builder: (context, state) {
          final bloc = BlocProvider.of<CounterBlocBloc>(context);
          return Scaffold(
            body: Center(
              child: Text(state.toString()),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                bloc.add(AddCounterEvent());

              },
              child: Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }
}
