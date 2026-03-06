import 'package:flutter/material.dart';

class PortionCounter extends StatefulWidget {
  const PortionCounter({super.key});

  @override
  State<PortionCounter> createState() => _PortionCounterState();
}

class _PortionCounterState extends State<PortionCounter> {
  int count = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Portion", style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Row(
          children: [
            _buildBtn(Icons.remove, () => setState(() => count > 1 ? count-- : null)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text("$count", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            _buildBtn(Icons.add, () => setState(() => count++)),
          ],
        ),
      ],
    );
  }

  Widget _buildBtn(IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, color: Colors.white, size: 20),
      ),
    );
  }
}




