import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medireach/utils/pallete.dart';

class MessageBubble extends StatelessWidget {
  MessageBubble({required this.sender, required this.text, required this.isMe});

  late final String sender;
  late final String text;
  late final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
        isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          Material(
            borderRadius: isMe
                ? BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))
                : BorderRadius.only(
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            elevation: 5,
            color: isMe ? Pallete.primaryThemeColor : Pallete.lightGrayColor,
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
              child: Text(
                '$text',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}