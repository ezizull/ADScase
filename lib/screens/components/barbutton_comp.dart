import 'package:flutter/material.dart';
import 'package:adscase/theme/color_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class BarButtonComp extends StatelessWidget {
  Function onPressed;
  String? iconTheme;

  BarButtonComp(
    this.iconTheme, {
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sheight = MediaQuery.of(context).size.height;

    return IconButton(
      onPressed: () {
        // action of bottom bar
        onPressed();
      },
      icon: SizedBox(
        height: sheight / 32,
        child: SvgPicture.asset(
          iconTheme.toString(),
          color: ColorTheme.black,
        ),
      ),
    );
  }
}
