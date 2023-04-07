import 'package:flutter/foundation.dart';

class UserItem {
  final int id;
  final String avatar;
  final String name;
  final String signature;
  bool followed;

  bool checked = false;

  UserItem(this.id, this.avatar, this.name, this.signature, this.followed);
}
