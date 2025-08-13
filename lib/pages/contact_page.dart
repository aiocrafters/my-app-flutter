import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'This is the Contact page. Provide an email or phone number for users to reach you.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
