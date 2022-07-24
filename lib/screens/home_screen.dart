import 'package:adscase/screens/components/button_comp.dart';
import 'package:adscase/theme/color_theme.dart';
import 'package:adscase/theme/icons_theme.dart';
import 'package:flutter/material.dart';

import 'package:adscase/cubit/counter/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:adscase/service/dio_client.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late DioClient dioClient = DioClient();

  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: ColorTheme.white,
      body: Center(
        child: Container(
          width: swidth,
          height: sheight / 10,
          alignment: Alignment.center,
          child: Wrap(
            spacing: swidth / 12,
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            children: [
              ButtonComp(
                IconsTheme.home_fill,
                onPressed: () {},
              ),
              ButtonComp(
                IconsTheme.heart_line,
                onPressed: () {
                  context.read<CounterCubit>().increment();
                },
              ),
              ButtonComp(
                IconsTheme.cart_line,
                onPressed: () {
                  context.read<CounterCubit>().decrement();
                },
              ),
              ButtonComp(
                IconsTheme.star_fill,
                onPressed: () {},
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
      ),
    );
  }
}
