import 'package:adscase/screens/components/barbutton_comp.dart';
import 'package:adscase/screens/components/container_comp.dart';
import 'package:adscase/theme/color_theme.dart';
import 'package:adscase/theme/icons_theme.dart';
import 'package:flutter/material.dart';

import 'package:adscase/cubit/counter/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:adscase/service/dio_client.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late DioClient dioClient = DioClient();
  late int index = 0;

  // change index for change icon
  onChange(int indx) {
    setState(() => index = indx);
  }

  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: ColorTheme.white,
      body: Center(
        child: Wrap(
          spacing: sheight / 20,
          direction: Axis.vertical,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return ContainerComp(data: state);
              },
            ),
            Container(
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
                      BarButtonComp(
                        index == 0
                            ? IconsTheme.home_fill
                            : IconsTheme.home_line,
                        onPressed: () {
                          onChange(0); // access onChange function in top
                        },
                      ),
                      BarButtonComp(
                        index == 1
                            ? IconsTheme.heart_fill
                            : IconsTheme.heart_line,
                        onPressed: () {
                          onChange(1); // access onChange function in top
                          context.read<CounterCubit>().decrement();
                        },
                      ),
                      BarButtonComp(
                        index == 2
                            ? IconsTheme.cart_fill
                            : IconsTheme.cart_line,
                        onPressed: () {
                          onChange(2); // access onChange function in top
                          context.read<CounterCubit>().increment();
                        },
                      ),
                      IconButton(
                        icon: SizedBox(
                          height: sheight / 32,
                          child: SvgPicture.asset(
                            index == 3
                                ? IconsTheme.star_fill
                                : IconsTheme.star_line,
                            color: ColorTheme.black,
                          ),
                        ),
                        onPressed: () {
                          onChange(3); // access onChange function in top
                          Navigator.of(context).pushNamed('/detail');
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
            ),
          ],
        ),
      ),
    );
  }
}
