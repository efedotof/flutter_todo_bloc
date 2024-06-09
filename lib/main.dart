import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo_bloc/router/app_router.dart';
import 'theme.dart';

void main() async {
  try {
  
    runApp( const MyApp());
  } catch (e) {
    log(e.toString());
  }
  
}

class MyApp extends StatefulWidget {
  const MyApp({super.key
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
        theme: darkTheme,
        routerConfig: _appRouter.config(),
        debugShowCheckedModeBanner: false,
      );

  }
}

