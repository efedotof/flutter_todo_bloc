part of 'cards_bloc.dart';

@immutable
sealed class CardsState {
}

final class CardsInitial extends CardsState {
  @override
  List<Cards> get card => [];
}


class AddCardState extends CardsState{
  final List<Cards> card;
  AddCardState({required this.card});
}



class UpdateState extends CardsState{
  final List<Cards> card;
  UpdateState({required this.card});
}



class Cards{
  final String title;
  final String descript;

  Cards({required this.title, required this.descript});

  static fromJson(Map<String, dynamic> card) {}

}


