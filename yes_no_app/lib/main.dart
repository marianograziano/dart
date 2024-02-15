import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/theme/theme.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/screen/chat/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Titulo',
        theme: AppTheme(selectedColor: 4).theme(),
      //   home: Scaffold(appBar: AppBar(
      //     title: const Text('Material App Bar'),
      //     centerTitle: true,
      
      //   ),
      //   body: Center(child: FilledButton.tonal(
      //     onPressed: () { }, child: Text('Prueba',style: TextStyle(fontSize: 50),))
      // ),
      // ),
      home:ChatScreen()
      
        ),
    );
  }}
