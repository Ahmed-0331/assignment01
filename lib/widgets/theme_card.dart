import 'package:flutter/material.dart';

class ThemeCard extends StatelessWidget {
  final Color color;
  const ThemeCard({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 140,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
              image: NetworkImage('https://via.placeholder.com/150'),
              fit: BoxFit.cover,
              opacity: 0.3
          ),
        ),
      ),
    );
  }
}
