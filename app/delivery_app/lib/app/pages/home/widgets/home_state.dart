// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:match/match.dart';

import 'package:delivery_app/app/models/products_model.dart';

import '../../../dto/order_product_dto.dart';

part 'home_state.g.dart';

@match
enum HomeStateStatus {
  initial,
  loading,
  loaded,
  error,
}

class HomeState extends Equatable {
  final HomeStateStatus status;
  final List<ProductsModel> produts;
  final String? errorMessage;
  final List<OrderProductDto> shoppingBag;

  const HomeState({
    required this.status,
    required this.produts,
    required this.shoppingBag,
    this.errorMessage,
    
  });

  const HomeState.initial()
      : status = HomeStateStatus.initial,
        produts = const [],
        shoppingBag = const [],
        errorMessage = null;

  @override
  List<Object?> get props => [status, produts, errorMessage, shoppingBag];

  HomeState copyWith({
    HomeStateStatus? status,
    List<ProductsModel>? produts,
    String? errorMessage,
    List<OrderProductDto>? shoppingBag,
  }) {
    return HomeState(
      status: status ?? this.status,
      produts: produts ?? this.produts,
      errorMessage: errorMessage ?? this.errorMessage,
      shoppingBag: shoppingBag ?? this.shoppingBag,
    );
  }
}
