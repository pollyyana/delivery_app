
import 'package:delivery_app/app/models/products_model.dart';

class OrderProductDto {
  final ProductsModel products;
  final int amout;

  OrderProductDto({
    required this.products,
    required this.amout,
  });

  double get totalprice => amout * products.price;
}
