import 'package:flutter/material.dart';

class SongListHeaderTile extends StatelessWidget {
  final VoidCallback playAll;
  final VoidCallback download;
  final VoidCallback list;

  const SongListHeaderTile(
      {required this.playAll,
      required this.download,
      required this.list,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
          onPressed: playAll, icon: const Icon(Icons.play_circle_outline)),
      title: const Text('播放全部'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(onPressed: download, icon: const Icon(Icons.download)),
          IconButton(
              onPressed: list, icon: const Icon(Icons.format_list_bulleted)),
        ],
      ),
    );
  }
}
