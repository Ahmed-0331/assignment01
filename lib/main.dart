import 'package:flutter/material.dart';
import 'discover_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Discover App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto', // আপনি আপনার পছন্দমতো ফন্ট দিতে পারেন
      ),
      home: const DiscoverScreen(),
    );
  }
}

