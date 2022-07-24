import 'package:adscase/theme/color_theme.dart';
import 'package:adscase/theme/font_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NavbarButton extends StatelessWidget {
  Function onPressed;
  String? iconTheme;
  int? notif;

  NavbarButton(this.iconTheme, {Key? key, this.notif, required this.onPressed})
      : super(key: key);

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
        child: Stack(
          children: [
            SvgPicture.asset(
              iconTheme.toString(),
              color: ColorTheme.black,
            ),
            Visibility(
                visible: notif != null,
                child: Positioned(
                  top: 0,
                  left: 5,
                  child: SizedBox(
                    height: sheight / 64,
                    child: CircleAvatar(
                      backgroundColor: ColorTheme.red,
                      child: Text(
                        notif.toString(),
                        style: FontTheme.notif,
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
