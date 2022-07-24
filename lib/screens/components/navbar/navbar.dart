// components
import 'package:adscase/screens/components/navbar/navbar_button.dart';
// cubit
import 'package:adscase/cubit/navbar/navbar_cubit.dart';
import 'package:adscase/theme/avatar_theme.dart';

// dependencies
import 'package:adscase/theme/color_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:adscase/theme/icons_theme.dart';
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
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  NavbarButton(
                    state.index == 0
                        ? IconsTheme.home_fill
                        : IconsTheme.home_line,
                    onPressed: () {
                      context.read<NavbarCubit>().onchange(0);
                    },
                  ),
                  NavbarButton(
                    state.index == 1
                        ? IconsTheme.heart_fill
                        : IconsTheme.heart_line,
                    onPressed: () {
                      context.read<NavbarCubit>().onchange(1);
                    },
                  ),
                  NavbarButton(
                    state.index == 2
                        ? IconsTheme.cart_fill
                        : IconsTheme.cart_line,
                    notif: 2,
                    onPressed: () {
                      context.read<NavbarCubit>().onchange(2);
                    },
                  ),
                  GestureDetector(
                    child: SizedBox(
                      height: sheight / 32,
                      child: const CircleAvatar(
                        backgroundImage: AssetImage(AvatarTheme.boy),
                      ),
                    ),
                    onTap: () {
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
