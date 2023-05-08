import 'package:delivery_app/app/core/ui/helpers/loader.dart';
import 'package:delivery_app/app/core/ui/helpers/messages.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseState<T extends StatefulWidget, Co extends BlocBase>
    extends State<T> with Loader, Messages {
  late final Co controller;

  @override
  void initState() {
    super.initState();
    controller = context.read<Co>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
    onReady();
  }

  void onReady() {}
}
