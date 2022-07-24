// components
import 'package:adscase/screens/components/navbar_btn.dart';
// cubit
import 'package:adscase/cubit/navbar/navbar_cubit.dart';

// dependencies
import 'package:adscase/theme/color_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:adscase/theme/icons_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  late int index = 0;

  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;

    return BlocBuilder<NavbarCubit, NavbarState>(
      builder: (context, state) {
        return Container(
          width: swidth,
          height: sheight / 10,
          alignment: Alignment.center,
          child: Wrap(
            direction: Axis.vertical,
            children: [
              Wrap(
                spacing: swidth / 12,
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                children: [
                  NavbarBtn(
                    state.index == 0
                        ? IconsTheme.home_fill
                        : IconsTheme.home_line,
                    onPressed: () {
                      context.read<NavbarCubit>().onchange(0);
                    },
                  ),
                  NavbarBtn(
                    state.index == 1
                        ? IconsTheme.heart_fill
                        : IconsTheme.heart_line,
                    onPressed: () {
                      context.read<NavbarCubit>().onchange(1);
                    },
                  ),
                  NavbarBtn(
                    state.index == 2
                        ? IconsTheme.cart_fill
                        : IconsTheme.cart_line,
                    onPressed: () {
                      context.read<NavbarCubit>().onchange(2);
                    },
                  ),
                  IconButton(
                    icon: SizedBox(
                      height: sheight / 32,
                      child: SvgPicture.asset(
                        state.index == 3
                            ? IconsTheme.star_fill
                            : IconsTheme.star_line,
                        color: ColorTheme.black,
                      ),
                    ),
                    onPressed: () {
                      context.read<NavbarCubit>().onchange(3);
                    },
                  ),
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: ColorTheme.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: ColorTheme.gray.withOpacity(0.1),
                offset: const Offset(0, -5), // changes position of shadow
              ),
            ],
          ),
        );
      },
    );
  }
}
