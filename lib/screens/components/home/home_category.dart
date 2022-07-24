import 'package:adscase/theme/color_theme.dart';
import 'package:adscase/theme/font_theme.dart';
import 'package:flutter/cupertino.dart';

class HomeCategory extends StatelessWidget {
  HomeCategory({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  final categories = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 20,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.only(left: width / 20),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(
            onTap: null,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: width / 25,
                vertical: height / 80,
              ),
              margin: EdgeInsets.only(right: width / 30),
              alignment: Alignment.center,
              child: Text("Mens Clothing", style: FontTheme.category1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width / 30),
                border: Border.all(color: ColorTheme.black),
                color: ColorTheme.black,
              ),
            ),
          ),
          GestureDetector(
            onTap: null,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: width / 25,
                vertical: height / 80,
              ),
              margin: EdgeInsets.only(right: width / 30),
              alignment: Alignment.center,
              child: Text("Jewelery", style: FontTheme.category2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width / 30),
                border: Border.all(color: ColorTheme.silver),
                color: ColorTheme.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: null,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: width / 25,
                vertical: height / 80,
              ),
              margin: EdgeInsets.only(right: width / 30),
              alignment: Alignment.center,
              child: Text("Electronics", style: FontTheme.category1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width / 30),
                border: Border.all(color: ColorTheme.black),
                color: ColorTheme.black,
              ),
            ),
          ),
          GestureDetector(
            onTap: null,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: width / 25,
                vertical: height / 80,
              ),
              margin: EdgeInsets.only(right: width / 30),
              alignment: Alignment.center,
              child: Text("Woman Clothing", style: FontTheme.category2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width / 30),
                border: Border.all(color: ColorTheme.silver),
                color: ColorTheme.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
