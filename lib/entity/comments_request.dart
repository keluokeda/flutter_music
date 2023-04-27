import 'package:flutter/foundation.dart';
import 'package:music/entity/comments_type.dart';

@immutable
class CommentsRequest {
  final int id;
  final CommentsType commentsType;

  const CommentsRequest(this.id, this.commentsType);
}
