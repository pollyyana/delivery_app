import 'dart:ffi';

import 'package:delivery_app/app/models/products_model.dart';

class OrderProductDto {
  final ProductsModel product;
  final int amout;

  OrderProductDto({
    required this.product,
    required this.amout,
  });

  double get totalprice => amout * product.price;
}
