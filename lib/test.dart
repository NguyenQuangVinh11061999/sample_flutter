import 'package:flutter/material.dart';
import 'package:sample_flutter/test%202.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(title),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _handleClick(int index) {
    print('Button $index clicked!');
    // Hoặc xử lý khác tuỳ theo index
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('4 Custom Buttons')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(title: 'Button 1', onPressed: () => _handleClick(1)),
            const SizedBox(height: 12),
            CustomButton(title: 'Button 2', onPressed: () => _handleClick(2)),
            const SizedBox(height: 12),
            CustomButton(title: 'Button 3', onPressed: () => _handleClick(3)),
            const SizedBox(height: 12),
            CustomButton(title: 'Button 4', onPressed: () => _handleClick(4)),
            CustomButton2(
              label: 'Button X',
              id: 5,
              onPressed: (id) {
                print('You clicked button with ID $id');
              },
            ),
          ],
        ),
      ),
    );
  }
}
