import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart'; // Import the share_plus package

class SharePage extends StatelessWidget {
  const SharePage({super.key});

  // Function to share the app
  void _shareApp(BuildContext context) {
    final String appLink =
        'https://play.google.com/store/apps/details?id=com.aiocrafters.app';
    // TODO: Replace with your actual Google Play Store link
    final String text = 'Check out AIO Crafters App: $appLink';

    Share.share(text); // Share the app link
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Share App'),
        centerTitle: true,
        backgroundColor: Colors.teal, // App bar color
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.share, size: 80, color: Colors.teal),
            const SizedBox(height: 20),
            const Text(
              'Spread the Love!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              'If you enjoy using our app, please share it with your friends and family. '
              'Your support helps us grow and bring you even more amazing features!',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => _shareApp(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Share App',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
