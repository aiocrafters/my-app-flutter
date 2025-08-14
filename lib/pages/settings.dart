import 'package:flutter/material.dart';
import '../../main.dart'; // For global dark mode control

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _darkMode = themeNotifier.value == ThemeMode.dark;
  bool _notifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),

          // Preferences Section
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              "Preferences",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          SwitchListTile(
            secondary: const Icon(Icons.dark_mode),
            title: const Text('Dark Mode'),
            value: _darkMode,
            onChanged: (bool value) {
              setState(() {
                _darkMode = value;
                themeNotifier.value = value ? ThemeMode.dark : ThemeMode.light;
              });
            },
          ),
          SwitchListTile(
            secondary: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            value: _notifications,
            onChanged: (bool value) {
              setState(() {
                _notifications = value;
              });
            },
          ),

          const Divider(),
        ],
      ),
    );
  }
}
