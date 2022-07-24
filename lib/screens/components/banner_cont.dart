import 'package:adscase/theme/color_theme.dart';
import 'package:adscase/theme/font_theme.dart';
import 'package:flutter/cupertino.dart';

/* custom container for app */
class BannerCont extends StatelessWidget {
  final dynamic data;

  const BannerCont({
    required this.data,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 50,
        maxHeight: 50,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      child: Text(
        '${data.counterValue}',
        style: FontTheme.heading1,
      ),
      decoration: BoxDecoration(
        color: ColorTheme.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 6,
            color: ColorTheme.gray.withOpacity(0.3),
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
