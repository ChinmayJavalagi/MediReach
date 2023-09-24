import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medireach/utils/pallete.dart';

import '../components/message_bubble_send.dart';
import '../utils/constants.dart';

class ChatBotScreen extends StatefulWidget {
  static String id = 'chatbot_screen';

  @override
  State<ChatBotScreen> createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  List<MessageBubble> messageBubbles = [MessageBubble(sender: 'MediReach', text: "hello, Can you tell me your symtoms?", isMe: false),
    MessageBubble(sender: 'User', text: "Cough, Headache, Fever", isMe: true),
    MessageBubble(sender: 'MediReach', text: "Do you have any other symtoms?", isMe: false),
    MessageBubble(sender: 'User', text: "No", isMe: true)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.primaryThemeColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                children: [
                  Material(
                    type: MaterialType.transparency,
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 1, color: Pallete.whiteColor),
                        color: Pallete.primaryThemeColor,
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10.0),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 14.0,
                            color: Pallete.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Text(
                      'Chat with AI',
                      style: GoogleFonts.manrope(textStyle: kChatTitleStyle),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Pallete.whiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26))),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Expanded(
                      child: ListView(
                        children: messageBubbles,
                      ),
                    ),
                    Container(
                      height: 60,
                      color:Pallete.grayColor,
                      child: Row(
                        children: [
                          Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                  hintText: 'Type message',
                                  border: InputBorder.none,
                                ),
                              )),
                          Material(
                            type: MaterialType.transparency,
                            child: Ink(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(width: 1, color: Pallete.grayColor3),
                                color: Pallete.grayColor3,
                              ),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(50.0),
                                onTap: () {
                                  messageBubbles.add(MessageBubble(sender: 'User', text: "hello", isMe: true));
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.send,
                                    size: 26.0,
                                    color: Pallete.blackColor,
                                  ),
                                ),
                              ),
                            ),
                          ),],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


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
                  color: isMe?Pallete.whiteColor:Pallete.blackColor,
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