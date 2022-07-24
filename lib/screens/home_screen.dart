/* components */
import 'package:adscase/bloc/products/product_bloc.dart';
import 'package:adscase/screens/components/home/home_notif.dart';
import 'package:adscase/screens/components/home/home_search.dart';

/* themes */
import 'package:adscase/theme/color_theme.dart';

/* dependencies */
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

/* show products, categories, search, notify, banner */
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;

    return Container(
      width: swidth,
      padding: EdgeInsets.symmetric(horizontal: swidth / 20),
      child: ListView(
        children: [
          Container(
            color: ColorTheme.transparent,
            margin: EdgeInsets.only(top: sheight / 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeSearch(height: sheight, width: swidth / 1.38),
                HomeNotif(sheight: sheight)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.zero,
            child: BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                debugPrint(state.toString());
                return Text(state.toString());
              },
            ),
          ),
          Container(
            height: sheight,
            alignment: Alignment.center,
            child: const Text("HomeScreen"),
          )
        ],
      ),
    );
  }
}
