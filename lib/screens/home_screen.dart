/* components */
import 'package:adscase/bloc/products/product_bloc.dart';
import 'package:adscase/screens/components/home/home_category.dart';
import 'package:adscase/screens/components/home/home_notif.dart';
import 'package:adscase/screens/components/home/home_product.dart';
import 'package:adscase/screens/components/home/home_search.dart';

/* themes */
import 'package:adscase/theme/color_theme.dart';
import 'package:adscase/theme/font_theme.dart';
import 'package:adscase/utils/to_capitalize.dart';
import 'package:flutter/rendering.dart';

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
      padding: EdgeInsets.zero,
      child: ListView(
        children: [
          Container(
            color: ColorTheme.transparent,
            padding: EdgeInsets.symmetric(horizontal: swidth / 20),
            margin: EdgeInsets.only(top: sheight / 30, bottom: sheight / 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeSearch(height: sheight, width: swidth / 1.38),
                HomeNotif(sheight: sheight)
              ],
            ),
          ),
          HomeCategory(height: sheight, width: swidth),
          Container(height: sheight / 20),
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.symmetric(horizontal: swidth / 20),
            child: BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state is LoadedProductState) {
                  return Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: swidth / 45),
                    constraints: BoxConstraints(minHeight: sheight),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: state.products.product.map((product) {
                            var index = state.products.product.indexOf(product);
                            if (index % 2 == 0) {
                              var title =
                                  ToCapitalize(product.title.split(" ")[0]);

                              return HomeProduct(
                                height: sheight,
                                width: swidth,
                                title: title,
                                image: product.image!,
                                price: product.price,
                              );
                            }

                            return Container(
                              constraints: const BoxConstraints(maxHeight: 0),
                            );
                          }).toList(),
                        ),
                        Column(
                          children: state.products.product.map((product) {
                            var index = state.products.product.indexOf(product);
                            if (index % 2 != 0) {
                              var title =
                                  ToCapitalize(product.title.split(" ")[0]);

                              return HomeProduct(
                                height: sheight,
                                width: swidth,
                                title: title,
                                image: product.image!,
                                price: product.price,
                              );
                            }

                            return Container(
                              constraints: const BoxConstraints(maxHeight: 0),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  );
                }
                return Container(
                    height: sheight * 0.5,
                    padding: EdgeInsets.zero,
                    child: const Center(child: CircularProgressIndicator()));
              },
            ),
          ),
          Container(height: sheight / 5),
        ],
      ),
    );
  }
}
