
import 'dart:async';
import 'package:flutter/material.dart';
import '../widgets/counter_card.dart';
import '../widgets/control_buttons.dart';

class TasbihScreen extends StatefulWidget {
  const TasbihScreen({super.key});

  @override
  State<TasbihScreen> createState() => _TasbihScreenState();
}

class _TasbihScreenState extends State<TasbihScreen> {
  int count = 46;
  int seconds = 4;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        seconds++;
      });
    });
  }

  void incrementCount() {
    setState(() {
      count++;
    });
  }

  void resetCount() {
    setState(() {
      count = 0;
    });
  }

  String formatTime(int totalSeconds) {
    int hours = totalSeconds ~/ 3600;
    int minutes = (totalSeconds % 3600) ~/ 60;
    int secs = totalSeconds % 60;

    return "$hours:${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}";
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F0F8),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),

            // AppBar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.arrow_back),
                  Text(
                    "Tasbih Counter",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.notifications_none),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Counter Card
            CounterCard(
              count: count,
              time: formatTime(seconds),
              onTap: incrementCount,
            ),

            const SizedBox(height: 20),

            ControlButtons(
              onReset: resetCount,
            ),
          ],
        ),
      ),
    );
  }
}
