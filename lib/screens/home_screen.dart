import 'package:flutter/material.dart';

import 'package:adscase/cubit/counter/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:adscase/service/dio_client.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late DioClient dioClient = DioClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          spacing: 10,
          direction: Axis.vertical,
          children: [
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Container(
                    width: 50,
                    height: 50,
                    color: HexColor('ffffff'),
                    alignment: Alignment.center,
                    child: Text('${state.counterValue}'));
              },
            ),
            IconButton(
              onPressed: () {
                context.read<CounterCubit>().decrement();
              },
              icon: SvgPicture.asset(
                'assets/svg/home_line.svg',
                color: HexColor('010101'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
