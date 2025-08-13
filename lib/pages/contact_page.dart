import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // For launching email links

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  // Function to launch the email client
  Future<void> _launchEmail(String email) async {
    final Uri emailUri = Uri(scheme: 'mailto', path: email);
    if (!await launchUrl(emailUri)) {
      throw Exception('Could not launch $emailUri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.email, size: 50.0, color: Colors.blueAccent),
            const SizedBox(height: 16.0),
            const Text(
              'Contact Us via Email',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'aiocrafters@gmail.com',
              style: TextStyle(fontSize: 20.0, color: Colors.black87),
            ),
            const SizedBox(height: 16.0),

            // Send Email Button
            ElevatedButton(
              onPressed: () {
                _launchEmail('aiocrafters@gmail.com');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
              child: const Text('Send Email', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
