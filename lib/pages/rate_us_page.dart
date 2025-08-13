import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import the url_launcher package

class RateUsPage extends StatelessWidget {
  const RateUsPage({super.key});

  // Function to open the Google Play Store for rating
  Future<void> _launchRateUsUrl() async {
    final Uri url = Uri.parse(
      'https://play.google.com/store/apps/details?id=com.aiocrafters.app', // Replace with your app's package name
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rate Us'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple, // Customize the app bar color
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Star icons row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return const Icon(Icons.star, size: 40, color: Colors.amber);
              }),
            ),
            const SizedBox(height: 20),

            // Heading
            const Text(
              'We Value Your Feedback!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),

            // Description text
            const Text(
              'If you enjoy using our app, please take a moment to rate us on the Google Play Store. '
              'Your support helps us improve and bring you even better features!',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            // Rate Us button
            ElevatedButton(
              onPressed: _launchRateUsUrl,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Rate Us on Google Play',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
