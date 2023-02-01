import 'package:delivery_app/app/core/ui/styles/app_styles.dart';
import 'package:delivery_app/app/core/ui/styles/colors_app.dart';
import 'package:delivery_app/app/core/ui/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

import '../../core/config/env/env.dart';

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
          DeliveryButton(
            width: 200,
            height: 200,
            label: Env.ins ['backend_base_url'] ?? '', 
            onpressed: (){},
            ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'testando'),
          )
        ],
      ),
    );
  }
} 
