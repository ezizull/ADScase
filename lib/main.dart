import 'package:adscase/cubit/counter/counter_cubit.dart';
import 'package:adscase/screens/home_screen.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // if want to change theme
  final ThemeData light = ThemeData.light();
  final ThemeData dark = ThemeData.dark();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: light,
        home: const HomeScreen(),
      ),
    );
  }
}
