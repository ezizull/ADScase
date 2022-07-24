import 'package:adscase/screens/components/navbar.dart';
import 'package:adscase/screens/home_screen.dart';
import 'package:adscase/theme/color_theme.dart';
import 'package:flutter/material.dart';

/* main of screen */
class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.white,
      body: Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const HomeScreen(),
          const Positioned(
            bottom: 0,
            child: Navbar(),
          ),
        ],
      ),
    );
    ;
  }
}
