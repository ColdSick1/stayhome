enum MessageState { allert, defaultMessage }

class FriendsActivity {
  final String message;

  final MessageState messageState;

  FriendsActivity({
    required this.message,
    required this.messageState,
  });
}
