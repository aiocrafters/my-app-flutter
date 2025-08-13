import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'This is the Privacy Policy page. Explain how user data is collected and handled.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
