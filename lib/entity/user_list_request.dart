import 'package:flutter/foundation.dart';
import 'package:music/entity/user_list_type.dart';

@immutable
class UserListRequest {
  final int id;
  final UserListType userListType;
  final String title;

  const UserListRequest(this.id, this.userListType, this.title);
}
