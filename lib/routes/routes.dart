import 'package:flutter/material.dart';
import 'package:shop_app_flutter/pages/detail_screen.dart';
import 'package:shop_app_flutter/core/global_variable.dart';
import 'package:shop_app_flutter/pages/home_screen.dart';
import 'package:shop_app_flutter/routes/route_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RouteName.detailScreen:
        return MaterialPageRoute(builder: (context) => DetailScreen(product: products[0],));
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No Page Route For this Page')),
          ),
        );
    }
  }
}
