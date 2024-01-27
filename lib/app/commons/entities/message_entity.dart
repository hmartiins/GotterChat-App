import 'package:equatable/equatable.dart';

class Content {
  const Content({
    required this.message,
    required this.datetime,
  });

  final String message;
  final String datetime;
}

class MessageEntity extends Equatable {
  const MessageEntity({
    required this.content,
    required this.id,
    required this.roomId,
    required this.userId,
  });

  final String id;
  final String roomId;
  final String userId;
  final Content content;

  @override
  List<Object?> get props => [
        id,
        roomId,
        userId,
        content,
      ];
}
