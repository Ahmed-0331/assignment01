import 'dart:async';
import 'package:flutter/material.dart';
import '../widgets/counter_card.dart';
import '../widgets/theme_card.dart';

class TasbihScreen extends StatefulWidget {
  const TasbihScreen({super.key});

  @override
  State<TasbihScreen> createState() => _TasbihScreenState();
}

class _TasbihScreenState extends State<TasbihScreen> {
  int _counter = 46;
  int _seconds = 40;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _seconds++;
      });
    });
  }
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _resetAll() {
    setState(() {
      _counter = 0;
      _seconds = 0;
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Tasbih Counter"),
        actions: [IconButton(icon: const Icon(Icons.notifications_none), onPressed: () {})],
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CounterCard(
              counter: _counter,
              seconds: _seconds,
              onTap: _incrementCounter,
              onReset: _resetAll,
            ),
            const SizedBox(height: 25),
            const Text("Add Theme", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            Row(
              children: const [
                ThemeCard(color: Color(0xFFD4B5B0)),
                SizedBox(width: 10),
                ThemeCard(color: Color(0xFF3B5B91)),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepPurple,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "Calendar"),
          BottomNavigationBarItem(icon: Icon(Icons.access_time), label: "Schedule"),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: "Setting"),
        ],
      ),
    );
  }
}
