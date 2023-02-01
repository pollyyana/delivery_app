import 'package:flutter/material.dart';

class DeliveryButton extends StatelessWidget {
  final VoidCallback? onpressed;
  final String label;
  final double? width;
  final double? height;

   const DeliveryButton({
    super.key,
    required this.label,
    required this.onpressed,
    this.width,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onpressed,
        child: Text(label),
      ),
    );
  }
}
