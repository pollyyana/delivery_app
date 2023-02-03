import 'package:delivery_app/app/pages/home/widgets/home_state.dart';
import 'package:delivery_app/app/repositories/products/products_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'dart:developer';

class HomeController extends Cubit<HomeState> {
  final ProductsRepository _productsRepository;

  HomeController(
    this._productsRepository,
  ) : super(const HomeState.initial());

  Future<void> loadProducts() async {
    emit(state.copyWith(status: HomeStateStatus.loading));

    try {
      // await Future.delayed(Duration(seconds: 2));
      final products = await _productsRepository.findAllProducts();
      throw Exception();
      emit(state.copyWith(status: HomeStateStatus.loaded, produts: products));
    } catch (e, s) {
      log('Erro ao buscar Produtos', error: e, stackTrace: s);
      emit(
        state.copyWith(
            status: HomeStateStatus.error,
            errorMessage: 'Erro ao buscar produtos'),
      );
    }
  }
}
