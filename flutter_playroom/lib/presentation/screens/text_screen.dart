import 'package:flutter/material.dart';

class TextScreen extends StatefulWidget {
  const TextScreen({super.key});

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {

  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
        centerTitle: true,
      ),
      body:  Center(child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,children: [
          Text(clickCounter.toString(), style: TextStyle(fontSize: 170.0, fontWeight: FontWeight.w200)),
          Text('Elemento 2'),
          Text('Elemento 3'),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text('Elemento 1'),
          Text('Elemento 2'),
          Text('Elemento 3'),]
        )
        ]
        ),
        ),
        floatingActionButton: FloatingActionButton(onPressed:() {
          
          setState(() {
          clickCounter++;  
          });
          
        },
        child: Icon(Icons.abc)),
        );
        
  }
} 