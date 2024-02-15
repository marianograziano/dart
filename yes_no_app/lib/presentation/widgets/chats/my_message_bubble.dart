import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class MyMessageBubble extends StatelessWidget {

  final Message message; 
  const MyMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration( 
            color:  colors.secondary,
            borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
           // child: Text('Dolor consequat proident.', style:TextStyle(color: Colors.white)),
            child: Text(message.text, style:TextStyle(color: Colors.white)),
          )

        ),
        const SizedBox(height: 10 )
      ],
      
          );
  }
}
