import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cards_event.dart';
part 'cards_state.dart';

class CardsBloc extends Bloc<CardsEvent, CardsState> {
  CardsBloc() : super(CardsInitial()) {
    on<AddCard>((event, emit) {
      cardss.add(Cards(title: event.title, descript: event.description));
      emit(AddCardState(card:cardss));
    });

    on<RemoveItemsCard>((event, emit){
      cardss.removeAt(event.index);
      
      emit(UpdateState(card: cardss));
    });
  }
  var cardss =  CardsInitial().card; 
}
