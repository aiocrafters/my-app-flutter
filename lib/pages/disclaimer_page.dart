import 'package:flutter/material.dart';

class DisclaimerPage extends StatelessWidget {
  const DisclaimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Disclaimer'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'This is the Disclaimer page. Include legal disclaimers or liability notices here.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
