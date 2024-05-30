import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:todo_redux/redux/reducers/main_reducer.dart';
import 'package:todo_redux/redux/state.dart';

Store<ReduxAppState> getStore() {
  final reducers = combineReducers<ReduxAppState>([rootReducer]);

  final middleware = <Middleware<ReduxAppState>>[
    LoggingMiddleware.printer().call,
  ];

  final store = Store<ReduxAppState>(
    reducers,
    initialState: ReduxAppState(),
    middleware: middleware,
  );

  return store;
}
