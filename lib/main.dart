import 'package:flutter/material.dart';
import 'package:shop_app_flutter/detail_screen.dart';
import 'package:shop_app_flutter/global_variable.dart';
import 'package:shop_app_flutter/home_screen.dart';
import 'package:shop_app_flutter/routes/route_name.dart';
import 'package:shop_app_flutter/routes/routes.dart';

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
        useMaterial3: true,
        
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(254, 240, 1, 1),
          primary: Color.fromRGBO(254, 240, 1, 1),
          brightness: Brightness.light
          ),
      
      // appBar 
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.black,
            centerTitle: true,
            titleTextStyle: TextStyle(
              
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lato',
            ),
          ),

      //textTheme
          textTheme: TextTheme(
            titleLarge: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      fontFamily: 'Lato',
                    ),
            titleMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lato'
            ),
            bodySmall: TextStyle(
              fontSize: 18,
              color: Colors.black54,
              fontWeight: FontWeight.w500,
            )
          ),

          //input 

           inputDecorationTheme: InputDecorationTheme(
            prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),

         
      ),
      // home: DetailScreen(product: products[0]),
       initialRoute: RouteName.homeScreen,
      onGenerateRoute:Routes.generateRoute ,
      
    );
  }
}
