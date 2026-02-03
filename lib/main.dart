import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
//  Changed class name from default MyHomePage to CounterScreen
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}
class _CounterScreenState extends State<CounterScreen> {
  //  Changed variable name from _counter to count
  int count = 0;

  // Added increment function
  void increment() {
    setState(() {
      count++;
    });
  }
  //  Added decrement function (cannot go below 0)
  void decrement() {
    if (count > 0) {
      setState(() {
        count--;
      });
    }
  }
  //  Added reset function
  void reset() {
    setState(() {
      count = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Counter App',
        style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Count',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 10),
            //  Display count
            Text(
              count.toString(),
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.red
              ),
            ),
            const SizedBox(height: 30),
            // Buttons row
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //  Decrement button
                ElevatedButton(
                  onPressed: decrement,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 15),

                //  Reset button
                ElevatedButton(
                  onPressed: reset,
                  child: const Text( 'Reset',
                    style: TextStyle(fontSize: 18,color: Colors.red),
                  ),
                ),
                const SizedBox(width: 15),
                //  Increment button
                ElevatedButton(
                  onPressed: increment,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


