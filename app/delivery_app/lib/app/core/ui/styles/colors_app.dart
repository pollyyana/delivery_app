import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;

  //construtor privado
  ColorsApp._();

  static ColorsApp get ins {
    //??= se instaci for nulo vai chamar colorapp e instanciar
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0XFF007D21);
  Color get secondary => const Color(0XFFF88B0C);
}

//extensao facilita o acesso as cores
extension ColorAppExceptions on BuildContext {
  ColorsApp get colors => ColorsApp.ins;
}
