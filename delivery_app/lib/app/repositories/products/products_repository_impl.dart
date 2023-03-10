import 'dart:developer';

import 'package:delivery_app/app/core/rest_client/custom_dio.dart';
import 'package:delivery_app/app/models/products_model.dart';
import 'package:dio/dio.dart';

import '../../core/exceptions/repository_exception.dart';
import './products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final CustomDio dio;
  ProductsRepositoryImpl({
    required this.dio,
  });

  @override 
  Future<List<ProductsModel>> findAllProducts() async {
    try {
      final result = await dio.unauth().get('/products');
      return result.data
          .map<ProductsModel>(
            (p) => ProductsModel.fromMap(p),
          )
          .toList();
    } on DioError catch (e, s) {
      log('erro ao buscar produto', error: e, stackTrace: s);
      throw RepositoryException(message: ' erro ao buscar produto');
    }
  }
}
