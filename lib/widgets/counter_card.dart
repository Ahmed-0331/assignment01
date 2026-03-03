import 'package:flutter/material.dart';

class CounterCard extends StatelessWidget {
  final int counter;
  final int seconds;
  final VoidCallback onTap;
  final VoidCallback onReset;

  const CounterCard({
    super.key,
    required this.counter,
    required this.seconds,
    required this.onTap,
    required this.onReset,
  });

  String _formatTime(int sec) {
    int h = sec ~/ 3600;
    int m = (sec % 3600) ~/ 60;
    int s = sec % 60;
    return "$h:${m.toString().padLeft(2, '0')}:${s.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: const Color(0xFF8E66B2),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          const Text("الله أكبر", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(color: Colors.white24, borderRadius: BorderRadius.circular(8)),
            child: Text(_formatTime(seconds), style: const TextStyle(color: Colors.white)),
          ),
          const SizedBox(height: 15),
          const Text("Tasbih Counter", style: TextStyle(color: Colors.white70, fontSize: 18)),
          Text(counter.toString().padLeft(3, '0'), style: const TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold)),
          const SizedBox(height: 15),

          // Increment Button
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 80, height: 40,
              decoration: BoxDecoration(color: Colors.black26, borderRadius: BorderRadius.circular(20)),
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: const EdgeInsets.all(4),
                  width: 32, decoration: const BoxDecoration(color: Colors.white70, shape: BoxShape.circle),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),

          // Action Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _iconBtn(Icons.refresh, onReset),
              _textBtn("Stop"),
              _iconBtn(Icons.pause, () {}),
            ],
          )
        ],
      ),
    );
  }

  Widget _iconBtn(IconData icon, VoidCallback press) => Container(
    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
    child: IconButton(icon: Icon(icon, color: Colors.deepPurple), onPressed: press),
  );

  Widget _textBtn(String text) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
    child: Text(text, style: const TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold)),
  );
}



