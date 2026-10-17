import 'package:chat_app/presentation/widgets/my_message_bubble.dart';
import 'package:flutter/material.dart';

class ChatScreem extends StatelessWidget {
  const ChatScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8BqkBWJdC_dZko26-7T4lTsQ4d4fZdcEdG8_0MN6wGg&s=10'),
            ),
            ),
            title: const Text('Diego Yepes'),
        ),
        body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
          return (index % 2 ==0)
          ? MyMessageBubble()
          : const Text('Mensaje de ella');
        },))
      ],
    );
  }
}