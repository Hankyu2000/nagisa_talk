import 'dart:ui';

class Message{
  final String messageUuid;
  final String senderStudentUuid;
  final String conversationUuid;
  Message({required this.messageUuid, required this.senderStudentUuid, required this.conversationUuid});
}

class TextMessage extends Message{
  final String textContent;
  TextMessage({required super.messageUuid, required super.senderStudentUuid, required super.conversationUuid, required this.textContent});
}

class ImageMessage extends Message{
  final String imageContentInBase64;
  ImageMessage({required super.messageUuid, required super.senderStudentUuid,required super.conversationUuid, required this.imageContentInBase64});
}