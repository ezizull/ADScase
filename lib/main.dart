import 'package:adscase/cubit/navbar/navbar_cubit.dart';
import 'package:adscase/router/app_router.dart';
import 'package:adscase/screens/root_screen.dart';
import 'package:adscase/theme/theme_style.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  /* for routing */
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavbarCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeStyle.light,
        debugShowCheckedModeBanner: false,
        home: const RootScreen(),
        onGenerateRoute: _appRouter.onGenerateRoute,
      ),
    );
  }
}
