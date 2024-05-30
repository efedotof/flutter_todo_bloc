import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_redux/redux/state.dart';
import 'package:todo_redux/redux/store.dart';
import 'package:todo_redux/router/app_router.dart';
import 'theme.dart';

void main() async {
  try {
    final store = getStore();


  runApp( MyApp(store: store,));
  } catch (e) {
    log(e.toString());
  }
  
}

class MyApp extends StatefulWidget {
  const MyApp({super.key,
    required this.store,
  
  
  });

  final Store<ReduxAppState> store;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: widget.store,
      child: MaterialApp.router(
        theme: darkTheme,
        routerConfig: _appRouter.config(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

