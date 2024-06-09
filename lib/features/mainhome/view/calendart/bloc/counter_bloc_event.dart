part of 'counter_bloc_bloc.dart';

@immutable
sealed class CounterBlocEvent {}



class AddCounterEvent extends CounterBlocEvent{}