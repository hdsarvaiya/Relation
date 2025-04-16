import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: Column(
        children: [
          const Card(
            child: ListTile(
              title: Text('Relationship Health Score'),
              subtitle: Text('85% - Good'),
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                ListTile(
                  title: Text('Upcoming Reminder: Call Mom'),
                  subtitle: Text('Tomorrow at 10:00 AM'),
                ),
                ListTile(
                  title: Text('Reconnect with John'),
                  subtitle: Text('Last contacted: 3 months ago'),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to Add Reminder Screen
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}