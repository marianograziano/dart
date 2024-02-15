import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chats/her_message_bubble..dart';
import 'package:yes_no_app/presentation/widgets/chats/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Padding(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://media.istockphoto.com/id/1482199015/es/foto/feliz-cachorro-gal%C3%A9s-corgi-14-semanas-de-edad-perro-gui%C3%B1ando-un-ojo-jadeando-y-sentado-aislado.jpg?s=2048x2048&w=is&k=20&c=qPa38iUDR2AmNbK0wkykR1vR73cZRTgprD4cF-saOm4='))),
          title: const Text('Hola')),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Column(children: [
        Expanded(
          child: ListView.builder(
              controller: chatProvider.chatScrollController,
              itemCount: chatProvider.messageList.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messageList[index];
                return (message.fromWho == FromWho.hers)
                    ? HerMessageBubble(message: message)
                    : MyMessageBubble( message : message );
                //return (index % 2 == 0 ) ? const HerMessageBubble() :
                //const MyMessageBubble();
              }),
        ),
        // Caja de Texto
        MessageFieldBox(
          //onValue: (value) => chatProvider.sendMessage(value)
          onValue: chatProvider.sendMessage
        
        )
      ]),
    );
  }
}
