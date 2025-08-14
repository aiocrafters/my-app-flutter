import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Icon(Icons.info_outline, color: Colors.blue, size: 50),
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                'About App',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'This is a demo About page for showcasing an application. '
              'Here you can provide details about the purpose of your app, '
              'its target audience, and the benefits it offers. '
              'You can also describe your brand vision and what makes your product unique.',
              style: TextStyle(fontSize: 16), // removed hardcoded black
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16),
            const Text(
              'Key Features:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '✔ Feature One – Describe your first feature here\n'
              '✔ Feature Two – Highlight another capability\n'
              '✔ Feature Three – Add more features as needed',
              style: TextStyle(fontSize: 16), // removed hardcoded black
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
