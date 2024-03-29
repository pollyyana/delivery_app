import 'package:auto_size_text/auto_size_text.dart';
import 'package:delivery_app/app/core/extensions/formatter.extensions.dart';
import 'package:delivery_app/app/core/ui/helpers/size_extensions.dart';
import 'package:delivery_app/app/core/ui/styles/text_styles.dart';
import 'package:delivery_app/app/core/ui/widgets/delivery_increment_decrement_button.dart';
import 'package:delivery_app/app/dto/order_product_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/ui/base_state/base_state.dart';
import '../../core/ui/widgets/delivery_appbar.dart';
import '../../models/products_model.dart';
import 'product_detail_controller.dart';

class ProductDetailPage extends StatefulWidget {
  final ProductsModel product;
  final OrderProductDto? order;

  const ProductDetailPage(
      {super.key, required this.product, required this.order});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState
    extends BaseState<ProductDetailPage, ProductDetailController> {
  @override
  void initState() {
    super.initState();
    final amount = widget.order?.amount ?? 1;
    controller.initial(amount, widget.order != null);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DeliveryAppbar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: context.screenWidth,
              height: context.percentHeight(.4),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      widget.product.image,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                widget.product.name,
                style: context.textStyles.textExtraBold.copyWith(fontSize: 22),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  child: Text(
                    widget.product.description,
                  ),
                ),
              ),
            ),
            const Divider(),
            Row(
              children: [
                Container(
                  width: context.percentWith(.5),
                  height: 68,
                  padding: const EdgeInsets.all(8),
                  child: BlocBuilder<ProductDetailController, int>(
                    builder: (context, amount) {
                      return DeliveryIncrementDecrementButton(
                        decrementTap: () {
                          controller.decrement();
                        },
                        incrementTap: () {
                          controller.increment();
                        },
                        amout: amount,
                      );
                    },
                  ),
                ),
                Container(
                  width: context.percentWith(.5),
                  height: 68,
                  padding: const EdgeInsets.all(8),
                  child: BlocBuilder<ProductDetailController, int>(
                    builder: (context, amount) {
                      return ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(OrderProductDto(
                              product: widget.product, amount: amount));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Adicionar ',
                              style: context.textStyles.textExtraBold
                                  .copyWith(fontSize: 13),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: AutoSizeText(
                                (widget.product.price * amount).currencyPTBR,
                                maxFontSize: 13,
                                minFontSize: 5,
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                style: context.textStyles.textExtraBold,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
