import 'package:flutter/material.dart';

class ControlButtons extends StatelessWidget {
  final VoidCallback onReset;

  const ControlButtons({
    super.key,
    required this.onReset,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: onReset,
          child: const Icon(Icons.refresh),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Stop"),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Icon(Icons.pause),
        ),
      ],
    );
  }
}
