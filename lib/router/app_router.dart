import 'package:adscase/cubit/counter/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:adscase/screens/detail_screen.dart';
import 'package:adscase/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  final CounterCubit _counterCubit = CounterCubit();

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child: HomeScreen(),
          ),
        );
      case '/detail':
        return MaterialPageRoute(builder: (_) => DetailScreen());
      default:
        return null;
    }
  }
}
