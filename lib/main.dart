import 'package:flutter/material.dart';
import 'package:shop_app_flutter/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(254, 240, 1, 1),
          primary: Color.fromRGBO(254, 240, 1, 1),
          brightness: Brightness.light
          ),
          inputDecorationTheme: InputDecorationTheme(
            prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          )
      ),
      home: HomeScreen(),
    );
  }
}
