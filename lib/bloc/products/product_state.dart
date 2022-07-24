// ignore_for_file: must_be_immutable

part of 'product_bloc.dart';

abstract class ProductState extends Equatable {}

class ProductInitial extends ProductState {
  @override
  List<Object?> get props => [];
}

class LoadingProductState extends ProductState {
  @override
  List<Object?> get props => [];
}

class LoadedProductState extends ProductState {
  Products products;
  LoadedProductState(this.products);

  @override
  List<Object?> get props => [products];
}

class ErrorProductState extends ProductState {
  String error;
  ErrorProductState(this.error);

  @override
  List<Object?> get props => [error];
}
