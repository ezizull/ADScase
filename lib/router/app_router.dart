import 'package:adscase/screens/detail_screen.dart';
import 'package:adscase/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case '/detail':
        return MaterialPageRoute(
          builder: (_) => DetailScreen(),
        );
      default:
        return null;
    }
  }
}
