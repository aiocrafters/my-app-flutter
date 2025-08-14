import 'package:flutter/material.dart';

class DisclaimerPage extends StatelessWidget {
  const DisclaimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Disclaimer'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Icon(
                  Icons.warning_rounded,
                  color: Colors.blue,
                  size: 50,
                ),
              ),
              const SizedBox(height: 16),
              const Center(
                child: Text(
                  'Disclaimer',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'This is a demo disclaimer page for application templates. '
                'All information provided in this app is for general purposes only and should not be taken as professional advice. '
                'While we strive to keep the content up to date and accurate, we make no guarantees about its completeness or reliability.',
                style: TextStyle(fontSize: 16), // removed hardcoded black
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              const Text(
                'Any actions you take based on the information provided in this application are strictly at your own risk. '
                'We will not be responsible for any losses or damages resulting from the use of this app or its contents.',
                style: TextStyle(fontSize: 16), // removed hardcoded black
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              const Text(
                'Source of Information:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'The information in this app is intended for demonstration purposes only and may include content adapted from public resources or fictional data.',
                style: TextStyle(fontSize: 14), // removed hardcoded black
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Acknowledge',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
