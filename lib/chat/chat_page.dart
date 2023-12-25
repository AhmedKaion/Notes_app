import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:practice/chat/bubble.dart';
import 'package:practice/chat/constant.dart';
import 'package:practice/chat/messages.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  static const String id = 'chat page';

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _controller = ScrollController();
  var messages = FirebaseFirestore.instance.collection('messages');

  TextEditingController messageController = TextEditingController();

  @override
  void dispose() {
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var email= ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: messages.orderBy(KCreated,descending: true).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<MessageModel> messageList = [];
          //
          // = List.from(snapshot.data!.docs.map((e) => MessageModel.fromJson(e)));
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            messageList.add(MessageModel.fromJson(snapshot.data!.docs[i]));
          }

          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: kprimaryColor,
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(kLogo),
                    height: 75,
                    width: 35,
                  ),
                  Text('Chat Page'),
                ],
              ),
              centerTitle: true,
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    controller: _controller,
                    itemCount: messageList.length,
                    itemBuilder: (context, index) {
                      return messageList[index] .id == email? ChatBubble(
                        message: messageList[index],
                      ): ChatBubble2(message: messageList[index],);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    controller: messageController,
                    onSubmitted: (data) {
                      messages.add({
                        'text': data,
                        KCreated:DateTime.now(),
                        'id' :email
                      });
                      messageController.clear();
                    },
                    decoration: InputDecoration(
                      hintText: 'Send Message',
                      suffixIcon: IconButton(
                          onPressed: () {
                            messages.add({
                              'text': messageController.text,
                            });
                            messageController.clear();
                             _controller.animateTo(
                              0,
                              curve: Curves.easeIn,
                              duration: const Duration(seconds: 1),
                            );
                          },
                          icon: const Icon(
                            Icons.send,
                            color: kprimaryColor,
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          color: kprimaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return Text('Loading........');
        }
      },
    );
  }
}
