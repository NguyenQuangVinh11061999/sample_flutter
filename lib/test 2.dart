import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
  final String label;
  final int id;
  final Function(int) onPressed;

  const CustomButton2({
    super.key,
    required this.label,
    required this.id,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () => onPressed(id), child: Text(label));
  }
}
