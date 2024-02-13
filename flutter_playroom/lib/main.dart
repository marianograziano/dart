import 'package:flutter/material.dart';
import 'package:flutter_playroom/presentation/screens/counter_functions_screen.dart';
import 'package:flutter_playroom/presentation/screens/home_screen.dart';
import 'package:flutter_playroom/presentation/screens/text_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterFunctionsScreen()
        );
        
        // title: 'Flutter Playroom',
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => HomeScreen(),
      //   '/about': (context) => AboutScreen(),
      //   '/settings': (context) => SettingsScreen(),
      // },
    
  
}
}



class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/settings');
          },
          child: Text('Go to Settings'),
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back'),
        ),
      ),
    );
  }
}