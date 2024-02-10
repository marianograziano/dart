import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
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
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              clickCounter.toString(),
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              'Click${(clickCounter == 1) ? '' : 's'}',
              style: const TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        
        children: [
          // FloatingActionButton(
          //     shape: const StadiumBorder(),
          //
          //     child: const Icon(Icons.plus_one)),
          CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
              clickCounter++;
              setState(() {});
            },
          ),
          const SizedBox(height: 15),
          CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              if (clickCounter == 0) return;
              clickCounter--;
              setState(() {});
            },
          ),
          const SizedBox(height: 15),
          CustomButton(
            icon: Icons.refresh,
            onPressed: () {
              clickCounter = 0;
              setState(() {});
            },
          ),
          // FloatingActionButton(
          //     shape: const StadiumBorder(),

          //     child: const Icon(Icons.refresh)),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        shape: const StadiumBorder(),
        onPressed: onPressed, //

        child: Icon(icon));
  }
}
