// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:match/match.dart';
import 'package:delivery_app/app/models/products_model.dart';

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

  const HomeState({
    required this.status,
    required this.produts,
    this.errorMessage,
  });

  const HomeState.initial()
      : status = HomeStateStatus.initial,
        produts = const [],
        errorMessage = null;

  @override
  List<Object?> get props => [status, produts, errorMessage];

  HomeState copyWith({
    HomeStateStatus? status,
    List<ProductsModel>? produts,
    String? errorMessage,
  }) {
    return HomeState(
      status: status ?? this.status,
      produts: produts ?? this.produts,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
