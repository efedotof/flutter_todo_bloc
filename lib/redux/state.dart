
import 'package:todo_redux/redux/models/CardListener.dart';

class ReduxAppState {
  final AppState appState;

  ReduxAppState({this.appState = const AppState()});

  ReduxAppState copyWith({AppState? appState}) {
    return ReduxAppState(
      appState: appState ?? this.appState,
    );
  }
}
class AppState {
  final List<CardListener> cardLister;

  const AppState({
    this.cardLister = const [],
  });
  AppState copyWith({List<CardListener>? cardLister}) {
    return AppState(
      cardLister: cardLister ?? this.cardLister,
    );
  }
}
