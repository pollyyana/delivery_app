import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static Env? _instance;
  Env._();

  static Env get ins {
    _instance ??= Env._();
    return _instance!;
  }

  Future<void> load() => dotenv.load();
  String? operator [](String key) => dotenv.env[key];
}
