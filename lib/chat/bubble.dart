import 'package:flutter/material.dart';
import 'package:practice/chat/constant.dart';
import 'package:practice/chat/messages.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key,required this.message});
 final MessageModel message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(left: 16,top: 32,bottom: 32,right: 32),
        margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomRight: Radius.circular(32),

          ),
          color: kprimaryColor,

        ),
        child: Text(
          message.message,
          style: TextStyle(
              color:Colors.white ),),
      ),
    );
  }
}

class ChatBubble2 extends StatelessWidget {
  const ChatBubble2({super.key,required this.message});
  final MessageModel message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.only(left: 16,top: 32,bottom: 32,right: 32),
        margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomLeft: Radius.circular(32),

          ),
          color: Colors.blue,

        ),
        child: Text(
          message.message,
          style: TextStyle(
              color:Colors.white ),),
      ),
    );
  }
}