import 'package:flutter/material.dart';

class RateUsPage extends StatelessWidget {
  const RateUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rate Us'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Center(
        child: Text(
          'This is the Rate Us page. You can integrate Play Store/App Store rating here.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
