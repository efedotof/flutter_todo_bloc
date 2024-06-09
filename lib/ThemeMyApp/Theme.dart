import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFFF4F4F6),
    brightness: Brightness.dark,
  ),
  bottomNavigationBarTheme: bottomtheme,



  
);



const bottomtheme =  BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF222222),
          selectedIconTheme: IconThemeData(
            color: Color(0xFFFFFFFF),
          ),
          unselectedIconTheme: IconThemeData(
            color: Color(0xFFFFFFFF),
          ));