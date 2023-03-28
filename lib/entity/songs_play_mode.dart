import 'package:flutter/material.dart';

enum SongsPlayMode {
  ///列表循环
  repeat(iconData: Icons.repeat),

  ///单曲循环
  one(iconData: Icons.repeat_one),

  ///随机
  random(iconData: Icons.music_note);

  const SongsPlayMode({required this.iconData});

  final IconData iconData;

  SongsPlayMode next() {
    final index = this.index;
    return SongsPlayMode.values[(index + 1) % SongsPlayMode.values.length];
  }
}
