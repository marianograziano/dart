import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class HerMessageBubble extends StatelessWidget {

  final Message message;
  const HerMessageBubble({super.key,
   required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            decoration: BoxDecoration(
                color: colors.primary, borderRadius: BorderRadius.circular(20)),
            child:  Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              //child: Text('Enim occaecat occaecat ad ut laborum do duis Lorem sint commodo. ', style: TextStyle(color: Colors.white)),
              child: Text(message.text, style: TextStyle(color: Colors.white))
            )),
        const SizedBox(height: 5),
        _ImageBubble(imageUrl: message.imageUrl!),
        const SizedBox(height: 10),

        // todo imagen
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final String imageUrl;
  const _ImageBubble({super.key, required this.imageUrl});
  

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(imageUrl,
      width: size.width * 0.7,
      height: 150,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null ) return child; 
        return Container(
          width: size.width * 0.7,
          height: 150,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text('Recibiendo imagen')
      

        )
        ;

        }
      )
      );
}}