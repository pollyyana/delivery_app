import 'package:flutter/material.dart';

 //cores da aplicação
class ColorsApp {
  static ColorsApp? _instance;
  ColorsApp._();
  static ColorsApp get instance {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0XFF007D21);
  Color get secondary => const Color(0XFFfFAB18);
  Color get black => const Color(0XFF140E0E);
}

extension ColorAppExtension on BuildContext {
  ColorsApp get colors => ColorsApp.instance;
}
