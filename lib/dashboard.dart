// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    // Adjust number of columns for responsiveness
    int crossAxisCount = screenWidth > 600 ? 4 : 2;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications
            },
          ),
        ],
      ),

      // Drawer Menu (No Logout Item)
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Aio Crafters'),
              accountEmail: Text('aiocrafters@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40, color: Colors.deepPurple),
              ),
              decoration: BoxDecoration(color: Colors.deepPurple),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
          ],
        ),
      ),

      // Main Dashboard Grid
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1,
          ),
          itemCount: dashboardItems.length,
          itemBuilder: (context, index) {
            final item = dashboardItems[index];
            return _buildDashboardCard(
              icon: item['icon'],
              title: item['title'],
              color: item['color'],
              onTap: () {
                // Handle navigation action
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildDashboardCard({
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color, width: 1.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: color),
            const SizedBox(height: 12),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Dashboard Items List
final List<Map<String, dynamic>> dashboardItems = [
  {"icon": Icons.analytics, "title": "Reports", "color": Colors.blue},
  {"icon": Icons.shopping_cart, "title": "Orders", "color": Colors.green},
  {"icon": Icons.people, "title": "Users", "color": Colors.orange},
  {"icon": Icons.settings, "title": "Settings", "color": Colors.purple},
  {"icon": Icons.notifications, "title": "Alerts", "color": Colors.red},
  {"icon": Icons.star, "title": "Favorites", "color": Colors.amber},
];
