import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  final String message;
  final String id;
  MessageModel({required this.message,required this.id});

  factory MessageModel.fromJson( jsonData) {
    return MessageModel(message: jsonData['text'],id: jsonData['id']);
  }
}
