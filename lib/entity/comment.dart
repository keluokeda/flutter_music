import 'package:flutter/foundation.dart';

@immutable
class Comment {
  ///评论id
  final int commentId;

  ///用户id
  final int userId;

  ///用户头像
  final String userAvatar;

  ///用户昵称
  final String username;

  ///评论内容
  final String content;

  ///评论时间
  final int time;

  ///评论时间字符串
  final String timeStr;

  ///点赞的次数
  final int likedCount;

  ///是否点赞了
  final bool liked;

  ///是否是自己的
  final bool owner;

  ///ip定位
  final String? ipLocation;

  const Comment(
      this.commentId,
      this.userId,
      this.userAvatar,
      this.username,
      this.content,
      this.time,
      this.timeStr,
      this.likedCount,
      this.liked,
      this.owner,
      this.ipLocation);
}
