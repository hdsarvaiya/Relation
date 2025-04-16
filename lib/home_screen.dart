import 'package:flutter/material.dart';
// Keep this, as it's a local dependency

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900], // Navy blue background
      appBar: AppBar(
        title: const Text('Good Evening, User!'),
        backgroundColor: Colors.blue[900],
        elevation: 0,
      ),
      body: const Center(
        child: Text(
          '', // Blank content
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}