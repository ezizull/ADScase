import 'package:adscase/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class ButtonComp extends StatelessWidget {
  Function onPressed;
  String iconTheme;

  ButtonComp(
    this.iconTheme, {
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sheight = MediaQuery.of(context).size.height;

    return IconButton(
      onPressed: onPressed(),
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
