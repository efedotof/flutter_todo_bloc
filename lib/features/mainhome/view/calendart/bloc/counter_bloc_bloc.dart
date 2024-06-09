import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_bloc_event.dart';


class CounterBlocBloc extends Bloc<CounterBlocEvent, int> {
  CounterBlocBloc() : super(0) {
    on<AddCounterEvent>((event, emit) {
      emit(state + 1);
    });
  }
}
