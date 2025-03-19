import 'package:flutter/material.dart';
import 'screens/trip_list_page.dart';

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
      theme: ThemeData(),
      home: const TripListPage(),
    );
  }
}
