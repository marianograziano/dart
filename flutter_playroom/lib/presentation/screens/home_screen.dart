import 'package:flutter/material.dart';
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi Aplicación Flutter'),
        ),
        body: Center(
          child: Text('¡Hola Mundo!'),
        ),
      ),
    );
  }
}
