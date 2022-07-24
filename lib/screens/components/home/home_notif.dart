import 'package:adscase/theme/color_theme.dart';
import 'package:adscase/theme/font_theme.dart';
import 'package:adscase/theme/icons_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class HomeNotif extends StatelessWidget {
  const HomeNotif({
    Key? key,
    required this.sheight,
  }) : super(key: key);

  final double sheight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: IconButton(
        onPressed: null,
        icon: Stack(
          children: [
            SizedBox(
              height: sheight / 32,
              child: SvgPicture.asset(
                IconsTheme.bell,
                color: ColorTheme.black,
              ),
            ),
            Visibility(
                child: Positioned(
              top: 0,
              left: 5,
              child: SizedBox(
                height: sheight / 64,
                child: CircleAvatar(
                  backgroundColor: ColorTheme.red,
                  child: Text(
                    2.toString(),
                    style: FontTheme.notif,
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: ColorTheme.silver,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
