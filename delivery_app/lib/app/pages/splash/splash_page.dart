// import 'package:delivery_app/app/core/ui/styles/app_styles.dart';
import 'package:delivery_app/app/core/ui/helpers/size_extensions.dart';
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
            Text(context.screenWidth.toString()),
            Row(
              children: [
                Container(
                  color: Colors.red,
                  width: context.percentWith(.6),
                  height: 200,
                ),
                Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width *.4 ,
                  height: 200,
                ),
              ],
            ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'testando'),
          )
        ],
      ),
    );
  }
} 
