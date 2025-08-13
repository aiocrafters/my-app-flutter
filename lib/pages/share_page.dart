import 'package:flutter/material.dart';

class SharePage extends StatelessWidget {
  const SharePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Share App'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'This is the Share page. You can add content to share with friends using share_plus package.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
