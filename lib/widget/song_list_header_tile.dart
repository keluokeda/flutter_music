import 'package:flutter/material.dart';
import 'package:music/entity/songs_edit_request.dart';
import 'package:music/pages/common/download_view_model.dart';
import 'package:music/pages/common/music_view_model.dart';
import 'package:provider/provider.dart';

import '../entity/song_item.dart';

class SongListHeaderTile extends StatelessWidget {
  final List<SongItem> songs;
  final bool isUser;

  final int? playlistId;

  final bool isLocalFile;

  const SongListHeaderTile(
      {required this.songs,
      required this.isUser,
      required this.playlistId,
      this.isLocalFile = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
          onPressed: () {
            context.read<MusicViewModel>().playSongList(songs);
          },
          icon: const Icon(Icons.play_circle_outline)),
      title: const Text('播放全部'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
              onPressed: () {
                // context.read<MusicViewModel>().playSongList(songs);
                context.read<DownloadViewModel>().download(songs);
              },
              icon: const Icon(Icons.download)),
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/songs/edit',
                    arguments: SongsEditRequest(songs, isUser, playlistId,
                        isLocalFile: isLocalFile));
              },
              icon: const Icon(Icons.format_list_bulleted)),
        ],
      ),
    );
  }
}
