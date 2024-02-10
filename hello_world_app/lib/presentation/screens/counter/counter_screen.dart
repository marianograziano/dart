import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  String leyenda = 'Clicks';
  @override
  Widget build(BuildContext context) {
    // return const Scaffold(
    //   body: Center(
    //     child: Text('Counter Screen'),
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Screen'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              clickCounter.toString(),
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(leyenda,
            style: const TextStyle(fontSize: 25),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            clickCounter++;
            leyenda = (clickCounter  == 1) ? 'Click' : 'Clicks';
            setState(() {
              
            });
          }, child: const Icon(Icons.plus_one)),
    );
  }
}
