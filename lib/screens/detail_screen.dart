import 'package:adscase/cubit/counter/counter_cubit.dart';
import 'package:adscase/screens/components/container_comp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return ContainerComp(data: state);
          },
        ),
      ),
    );
  }
}
