import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  
  final ValueChanged<String> onValue;


  const MessageFieldBox({super.key, required this.onValue});
  @override
  Widget build(BuildContext context) {
    //final colors = Theme.of(context).colorScheme;

    final FocusNode focusNode = FocusNode();
    final textController = TextEditingController();
    final OutlineInputBorder = UnderlineInputBorder(
   
      borderSide: const BorderSide(color: Color.fromARGB(116, 0, 0, 0)),
      borderRadius: BorderRadius.circular(50)
      );
      final inputDecoration = InputDecoration(
        hintText: 'Termina tu mensaje con un ?',
        enabledBorder: OutlineInputBorder,
        focusedBorder: OutlineInputBorder,//OutlineInputBorder(borderSide: BorderSide(color: colors.secondary), borderRadius: BorderRadius.circular(20)) ,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
           onPressed: () { 
            final textValue = textController.value.text;
            onValue(textValue);
            textController.clear();
            },)
      
    );
   
    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      
      focusNode: focusNode,
      controller: textController,
      decoration:  inputDecoration,
      onFieldSubmitted: (value) {
        onValue(value);
        textController.clear();
        focusNode.requestFocus();
      }
      // onChanged: (value) {
      //   print('changed $value');
      //},
    );
  }
}