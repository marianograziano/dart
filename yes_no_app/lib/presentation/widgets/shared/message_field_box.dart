import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    

    final OutlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40));

      final inputDecoration = InputDecoration(
          enabledBorder: OutlineInputBorder,
          focusedBorder: OutlineInputBorder,
          filled: true,
          suffixIcon:
              IconButton(onPressed: () {
                print('Valor de la caja de texto');
              }, icon: Icon(Icons.send_outlined)));
    
    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Submit Value $value');
      },
      onChanged: (value) {
        print('changed $value');
      },
    );
  }
}
