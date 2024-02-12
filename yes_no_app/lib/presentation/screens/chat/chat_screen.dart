import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble..dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(1.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://img.asmedia.epimg.net/resizer/0CkHNfxQQKngDFkW1zlEnfJ75p8=/644x362/cloudfront-eu-central-1.images.arcpublishing.com/diarioas/KCS2YC7OE5OOTH4OVC4KFQS3NQ.jpg'),
            ),
          ),
          title: const Text('Mi interlocuto r'),
          centerTitle: true,
        ),
        body: _ChatView());
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                //itemCount: 100, 
                itemCount: chatProvider.messageList.length,
               itemBuilder: (BuildContext context, int index) { 
                final message = chatProvider.messageList[index];
                return (message.fromWho == FromWho.hers) 
                ? HerMessageBubble()
                : MyMessageBubble(message: message);
                // return (index % 2 == 0 )
                // ? const HerMessageBubble()
                // : const  MyMessageBubble();
               },)
            ),

            /// caja de texto 
          MessageFieldBox(
          //  onValue: (value) => chatProvider.sendMessage(value),
          onValue: chatProvider.sendMessage,
          ),],
        ),
      ),
    );
  }
}
