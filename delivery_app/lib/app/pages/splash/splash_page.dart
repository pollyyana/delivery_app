import 'package:delivery_app/app/core/ui/styles/app_styles.dart';
import 'package:delivery_app/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
//splah page e o inicio
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.colors.primary;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Spash'),
      ),
      body: Column(
        children: [
          Container(),
          ElevatedButton(onPressed: () {}, child: const Text('Teste')),
          TextFormField(
            decoration: InputDecoration(labelText: 'testando'),
          )
        ],
      ),
    );
  }
}
