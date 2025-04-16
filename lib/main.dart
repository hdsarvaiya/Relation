import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'home_screen.dart';
import 'dashboard_screen.dart'; // Import DashboardScreen
import 'welcome_screen.dart'; // Import WelcomeScreen
import 'login_screen.dart'; // Import LoginScreen
import 'register_screen.dart'; // Import RegisterScreen
import 'intro_screen.dart'; // Import the IntroScreen

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // Use platform-specific options
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Relation App',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      initialRoute: '/welcome', // Set the initial route to IntroScreen
      routes: {
        '/welcome': (context) => const WelcomeScreen(), // Welcome Screen
        '/intro': (context) => const IntroScreen(), // Intro Screen
        '/login': (context) => const LoginScreen(), // Login Screen
        '/register': (context) => const RegisterScreen(), // Register Screen
        '/home': (context) => const HomeScreen(), // Home Screen
        '/dashboard': (context) => const DashboardScreen(), // Dashboard Screen
      },
      onGenerateRoute: (settings) {
        // Dynamic route for ContactDetailPage
        return null;
      },
    );
  }
}
