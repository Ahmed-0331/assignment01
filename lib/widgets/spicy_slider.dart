import 'package:flutter/material.dart';

class SpicySlider extends StatefulWidget {
  const SpicySlider({super.key});

  @override
  State<SpicySlider> createState() => _SpicySliderState();
}

class _SpicySliderState extends State<SpicySlider> {
  double _value = 0.4;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Spicy", style: TextStyle(fontWeight: FontWeight.bold)),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 4,
            thumbColor: Colors.redAccent,
            activeTrackColor: Colors.redAccent,
            inactiveTrackColor: Colors.grey[200],
          ),
          child: Slider(
            value: _value,
            onChanged: (val) => setState(() => _value = val),
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Mild", style: TextStyle(color: Colors.green, fontSize: 12)),
            Text("Hot", style: TextStyle(color: Colors.red, fontSize: 12)),
          ],
        ),
      ],
    );
  }
}




