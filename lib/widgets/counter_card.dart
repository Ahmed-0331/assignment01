import 'package:flutter/material.dart';

class CounterCard extends StatelessWidget {
  final int count;
  final String time;
  final VoidCallback onTap;

  const CounterCard({
    super.key,
    required this.count,
    required this.time,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: const LinearGradient(
          colors: [Color(0xff7B4FE9), Color(0xff5E35B1)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),

          const Text(
            "الله أكبر",
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Container(
            padding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              time,
              style: const TextStyle(color: Colors.white),
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "Tasbih Counter",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white70,
            ),
          ),

          const SizedBox(height: 15),

          Text(
            count.toString().padLeft(3, '0'),
            style: const TextStyle(
              fontSize: 48,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 180,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
