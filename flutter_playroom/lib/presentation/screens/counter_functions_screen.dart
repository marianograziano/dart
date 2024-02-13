import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
        centerTitle: true,
        leading: IconButton (
          icon: Icon(Icons.refresh_outlined), 
          onPressed: () { 
            setState(() {
              clickCounter = 0;
            }); }
      ),
      ),
      body:  Center(child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,children: [
          Text(clickCounter.toString(), style: const TextStyle(fontSize: 170.0, fontWeight: FontWeight.w200)),
          const Text('Clicks'),
          ]
        ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomFloatingActionButton(icon: Icons.refresh,
            onPressed: () {
              setState(() {
                clickCounter =0;
              });
            },),
            const SizedBox(height: 20.0), 
            CustomFloatingActionButton(icon: Icons.plus_one,
             onPressed: () {
              setState(() {
                clickCounter++;
              });
            },),
           const SizedBox(height: 20.0), 
            CustomFloatingActionButton(icon: Icons.exposure_minus_1,
             onPressed: () {
              if (clickCounter == 0) return;
              setState(() {
                
                 clickCounter--;
              });
            },),
           
            const SizedBox(height: 20.0), 
            
            ],
        ),
        );
        
  }
}




class CustomFloatingActionButton extends StatelessWidget {

  final IconData icon; 
  final VoidCallback? onPressed;
  //final OnPressed??
  const CustomFloatingActionButton({
    super.key, required this.icon, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      shape: const StadiumBorder(), 
      onPressed:onPressed,
    child: Icon(icon));
  }
} 