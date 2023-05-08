import 'package:delivery_app/app/models/products_model.dart';

abstract class ProductsRepository {
  Future<List<ProductsModel>> findAllProducts();
}
