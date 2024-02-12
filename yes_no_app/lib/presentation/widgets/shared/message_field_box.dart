import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue; 
  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();
    

    final OutlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40));

      final inputDecoration = InputDecoration(
        hintText: 'End your message with a "??"',
          enabledBorder: OutlineInputBorder,
          focusedBorder: OutlineInputBorder,
          filled: true,
          suffixIcon:
              IconButton(onPressed: () {
                final textValue = textController.value.text;
                //print('Valor de la caja de texto = $textValue');
                textController.clear();
                onValue ( textValue );
              }, icon: Icon(Icons.send_outlined)));
    
    return TextFormField(
      onTapOutside:(event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        //print('Submit Value $value');
                        onValue ( value );
        textController.clear();
        focusNode.requestFocus();
      },
      
    );
  }
}
