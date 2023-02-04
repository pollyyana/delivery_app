
import 'package:delivery_app/app/models/products_model.dart';

class OrderProductDto {
  final ProductsModel products;
  final int amount;

  OrderProductDto({
    required this.products,
    required this.amount,
  });

  double get totalprice => amount * products.price;
}
