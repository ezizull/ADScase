// cubit
import 'package:adscase/cubit/navbar/navbar_cubit.dart';

// dependencies
import 'package:adscase/screens/components/navbar.dart';
import 'package:adscase/screens/detail_screen.dart';
import 'package:adscase/screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:adscase/theme/color_theme.dart';
import 'package:flutter/material.dart';

/* main of screen */
class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final screens = [
    const HomeScreen(),
    const DetailScreen(),
    const HomeScreen(),
    const DetailScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.white,
      body: BlocBuilder<NavbarCubit, NavbarState>(
        builder: (context, state) {
          return Stack(
            children: [
              screens[state.index],
              const Positioned(
                bottom: 0,
                child: Navbar(),
              ),
            ],
          );
        },
      ),
    );
    ;
  }
}
