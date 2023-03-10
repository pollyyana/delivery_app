import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailController extends Cubit<int> {
  late final bool _hasOrder;
  ProductDetailController() : super(1);
  void initial(int amout, bool hasOrder) {
    _hasOrder = hasOrder;
    emit(amout);
  }

  // void increment() => (state + 1);
  // void decrement() => (state - 1);
  void increment() => emit(state + 1);
  void decrement() => {
        if (state > 1)
          {
            emit(state - 1),
          }
      };
}
