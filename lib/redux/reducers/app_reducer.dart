import 'package:redux/redux.dart';
import 'package:todo_redux/redux/actions/main_actions.dart';
import 'package:todo_redux/redux/models/CardListener.dart';

int _nextId = 1; // Счетчик для генерации уникальных идентификаторов

final Reducer<List<CardListener>> AddItemsReducer = TypedReducer<List<CardListener>, AddItems>(
  (state, action) {
    return List.from(state)
      ..add(
        CardListener(
          title: action.title,
          descriptions: action.description,
          id: _nextId++,
        ),
      );
  },
).call;




final Reducer<List<CardListener>> RemoveItemsReducer = TypedReducer<List<CardListener>, RemoveItemAction>(
  (state,action){
    return List.from(state)..removeAt(action.id);
  }
);