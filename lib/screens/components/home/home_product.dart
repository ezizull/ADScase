/* themes */
import 'package:adscase/theme/color_theme.dart';
import 'package:adscase/theme/icons_theme.dart';
import 'package:adscase/theme/font_theme.dart';

/* dependencies */
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class HomeProduct extends StatelessWidget {
  const HomeProduct({
    Key? key,
    required this.height,
    required this.width,
    required this.title,
    required this.image,
    required this.price,
  }) : super(key: key);

  final double height;
  final double width;
  final String title;
  final String image;
  final double price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Container(
        margin: EdgeInsets.only(bottom: height / 30),
        child: Column(
          children: [
            Container(
              width: width / 2.5,
              height: height / 4.5,
              margin: EdgeInsets.only(bottom: height / 60),
              child: Padding(
                  padding: EdgeInsets.all(width / 20),
                  child: Image.network(image)),
              decoration: BoxDecoration(
                color: ColorTheme.white,
                borderRadius: BorderRadius.circular(width / 50),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 6,
                    color: ColorTheme.gray.withOpacity(0.15),
                    offset: const Offset(0, 5), // changes position of shadow
                  ),
                ],
              ),
            ),
            Container(
              width: width / 2.5,
              padding: EdgeInsets.symmetric(horizontal: width / 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: FontTheme.heading2, maxLines: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 14,
                            height: 14,
                            child: SvgPicture.asset(IconsTheme.dollar,
                                color: ColorTheme.red),
                          ),
                          Text(price.toString(), style: FontTheme.price),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    padding: const EdgeInsets.all(0.1),
                    child: IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset(IconsTheme.heart_line,
                          color: ColorTheme.black),
                    ),
                    decoration: BoxDecoration(
                      color: ColorTheme.ligth_silver,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
