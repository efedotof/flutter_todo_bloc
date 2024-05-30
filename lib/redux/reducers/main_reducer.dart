import 'package:redux/redux.dart';
import 'package:todo_redux/redux/reducers/app_reducer.dart';
import 'package:todo_redux/redux/state.dart';

Reducer<ReduxAppState> rootReducer = (ReduxAppState state, action) {
  final appState = state.appState;

  return ReduxAppState(
    appState: AppState(
      cardLister: AddItemsReducer(
        appState.cardLister,
        action,
      ),
    ),
  );
};
