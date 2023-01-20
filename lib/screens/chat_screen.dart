import 'package:chat_ui/models/user_model.dart';
import 'package:flutter/material.dart';

import '../models/message_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  const ChatScreen({Key? key, required this.user}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.user.name,
            style:
                const TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(messages[index].text);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
