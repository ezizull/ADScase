part of 'product_bloc.dart';

@immutable
abstract class ProductEvent extends Equatable {
  const ProductEvent();
}

class LoadEvent extends ProductEvent {
  @override
  List<Object?> get props => [];
}

class PullToRefreshEvent extends ProductEvent {
  @override
  List<Object?> get props => [];
}
