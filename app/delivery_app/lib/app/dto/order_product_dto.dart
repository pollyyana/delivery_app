
import 'package:delivery_app/app/models/products_model.dart';

class OrderProductDto {
  final ProductsModel product;
  final int amount;

  OrderProductDto({
    required this.product,
    required this.amount,
  });

  double get totalprice => amount * product.price;
}
