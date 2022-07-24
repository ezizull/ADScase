import 'package:adscase/bloc/navbar/navbar_cubit.dart';
import 'package:adscase/bloc/products/product_bloc.dart';
import 'package:adscase/data/repositories/dio_repository.dart';
import 'package:adscase/router/app_router.dart';
import 'package:adscase/screens/root_screen.dart';
import 'package:adscase/theme/theme_style.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  /* for routing onGenerateRoute */
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<DioRepository>(create: (context) => DioRepository()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => NavbarCubit()),
          BlocProvider(
            create: (context) => ProductBloc(
              RepositoryProvider.of<DioRepository>(context),
            )..add(LoadProductEvent()),
          ),
        ],
        child: MaterialApp(
          theme: ThemeStyle.light,
          debugShowCheckedModeBanner: false,
          home: const RootScreen(),
          onGenerateRoute: _appRouter.onGenerateRoute,
        ),
      ),
    );
  }
}
