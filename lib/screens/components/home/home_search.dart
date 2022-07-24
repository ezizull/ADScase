import 'package:adscase/theme/color_theme.dart';
import 'package:adscase/theme/font_theme.dart';
import 'package:adscase/theme/icons_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({Key? key, this.height, this.width}) : super(key: key);
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width!,
      margin: const EdgeInsets.only(),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          hintText: ("Search clothes..."),
          hintStyle: FontTheme.placeholder,
          fillColor: ColorTheme.silver,
          prefixIcon: Container(
              height: height! / 60,
              margin: EdgeInsets.zero,
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 15,
                  ),
                  child: SvgPicture.asset(
                    IconsTheme.search,
                    color: ColorTheme.black,
                  ))), // prefixIcon
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)), // border
          contentPadding: const EdgeInsets.only(left: 5, right: 5),
        ),
        style: FontTheme.text,
      ),
    );
  }
}
