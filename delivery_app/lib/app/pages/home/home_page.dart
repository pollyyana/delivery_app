import 'package:delivery_app/app/core/ui/base_state/base_state.dart';
import 'package:delivery_app/app/core/ui/widgets/delivery_appbar.dart';
// import 'package:delivery_app/app/models/products_model.dart';
import 'package:delivery_app/app/pages/home/widgets/delivery_product_tile.dart';
import 'package:delivery_app/app/pages/home/widgets/home_controller.dart';
import 'package:delivery_app/app/pages/home/widgets/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage, HomeController> {
  @override
  void onReady() {
    controller.loadProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DeliveryAppbar(),
        body: BlocConsumer<HomeController, HomeState>(
          listener: (context, state) {
            state.status.matchAny(
              any: () {},
              loading: () => showLoader(),
              error: () {
                hideLoader();
                showError(state.errorMessage ?? 'Erro não informado');
              },
            );
          },
          buildWhen: ((previous, current) => current.status.matchAny(
                any: () => false,
                initial: () => true,
                loaded: () => true,
              )),
          builder: (context, state) {
            return Column(
              children: [
                // Text(state.shoppingBag.length.toString()),
                Expanded(
                  child: ListView.builder(
                      itemCount: state.produts.length,
                      itemBuilder: (context, index) {
                        final product = state.produts[index];
                        final orders = state.shoppingBag
                            .where((order) => order.product == product);
                        return DeliveryProductTile(
                          product: product,
                          orderProduct: orders.isNotEmpty ? orders.first:null,
                          
                        );
                      }),
                )
              ],
            );
          },
        ));
  }
}
// floatingActionButton: FloatingActionButton(
//           onPressed: () async {
//             showLoader();
//             await Future.delayed(Duration(seconds: 2));
//             hideLoader();
//             showError('Erro ao criar');
//             await Future.delayed(Duration(seconds: 2));
//             showInfo('Erro ao criar');
//             await Future.delayed(Duration(seconds: 2));
//             showSucess('Erro ao criar');
//           },
//         ),