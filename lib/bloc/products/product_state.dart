// ignore_for_file: must_be_immutable

part of 'product_bloc.dart';

abstract class ProductState extends Equatable {}

class ProductInitial extends ProductState {
  @override
  List<Object?> get props => [];
}

class LoadingState extends ProductState {
  @override
  List<Object?> get props => [];
}

class LoadedState extends ProductState {
  Products products;
  LoadedState(this.products);

  @override
  List<Object?> get props => [products];
}

class FailedToLoadState extends ProductState {
  String error;
  FailedToLoadState(this.error);

  @override
  List<Object?> get props => [error];
}
