part of 'cards_bloc.dart';

@immutable
sealed class CardsEvent {}


class AddCard extends CardsEvent{
  final String title;
  final String description;
  AddCard({required this.title, required this.description,});
}


class RemoveItemsCard extends CardsEvent{
  final int index;
  RemoveItemsCard({required this.index});
}