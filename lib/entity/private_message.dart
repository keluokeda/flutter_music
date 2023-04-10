class PrivateMessage {
  ///消息id
  final int id;

  ///是否是用户发的
  final bool isUser;

  ///用户头像
  final String userAvatar;
  final String friendAvatar;
  final String friendName;
  final String friendId;
  final String content;
  final int time;

  PrivateMessage(this.id, this.isUser, this.userAvatar, this.friendAvatar,
      this.friendName, this.friendId, this.content, this.time);
}
