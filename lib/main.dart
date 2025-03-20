import 'package:flutter/material.dart';
import 'package:flutter_winlinux_1/screens/main_screen.dart';

void main() {
  runApp(const TripApp());
}

class TripApp extends StatelessWidget {
  const TripApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wizh Trip App',
      home: const MainNavigationPage(),
    );
  }
}
