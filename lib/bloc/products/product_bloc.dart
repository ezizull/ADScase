import 'package:adscase/data/models/products/products.dart';
import 'package:adscase/data/repositories/dio_client.dart';
import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final DioRepository _dioRepository;

  ProductBloc(this._dioRepository) : super(LoadingState()) {
    on<LoadEvent>((event, emit) async {
      emit(LoadingState());
      try {
        final products = await _dioRepository.fetchProducts();
        emit(LoadedState(products));
        debugPrint(products.toString());
      } catch (e) {
        emit(FailedToLoadState(e.toString()));
      }
    });
  }
}
