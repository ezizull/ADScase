// ignore_for_file: non_constant_identifier_names

import 'package:adscase/theme/color_theme.dart';
import 'package:flutter/cupertino.dart';

// text style theme
class FontTheme {
  /* HEADING */
  static TextStyle heading1 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w900,
    color: ColorTheme.black,
    fontFamily: 'Quicksand',
  );
  static TextStyle heading2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w800,
    color: ColorTheme.black,
    fontFamily: 'Quicksand',
  );

  /* INPUT */
  static TextStyle text = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: ColorTheme.black,
    fontFamily: 'Quicksand',
  );
  static TextStyle placeholder = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: ColorTheme.dark_silver,
    fontFamily: 'Quicksand',
  );

  /* CATEGORY BUTTON */
  static TextStyle category1 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: ColorTheme.white,
    fontFamily: 'Quicksand',
  );
  static TextStyle category2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: ColorTheme.dark_silver,
    fontFamily: 'Quicksand',
  );

  /* PRICE */
  static TextStyle price = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: ColorTheme.red,
    fontFamily: 'Quicksand',
  );

  /* NOTIF */
  static TextStyle notif = TextStyle(
    fontSize: 8,
    color: ColorTheme.white,
    fontFamily: 'Quicksand',
  );
}
