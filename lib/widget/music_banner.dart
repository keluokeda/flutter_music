import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:music/pages/common/music_view_model.dart';
import 'package:provider/provider.dart';

class MusicBanner extends StatelessWidget {
  const MusicBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MusicViewModel>(builder: (_, viewModel, __) {
      return Card(
        margin: const EdgeInsets.all(8),
        child: ListTile(
          title: Text(viewModel.currentPlayingSong?.name ?? '未在播放'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  onPressed: () async {
                    if (kDebugMode) {
                      print('当前播放状态 ${viewModel.state}');
                    }
                    if (viewModel.state == PlayerState.playing) {
                      viewModel.pause();
                    } else {
                      viewModel.resume();
                    }
                  },
                  icon: Icon(viewModel.state == PlayerState.playing
                      ? Icons.pause_circle_outline
                      : Icons.play_circle_outline)),
              IconButton(
                  onPressed: () {
                    _showSongListDialog(context);
                  },
                  icon: const Icon(Icons.reorder)),
            ],
          ),
        ),
      );
    });
  }

  void _showSongListDialog(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) =>
            Consumer<MusicViewModel>(builder: (context, viewModel, __) {
              return ListView(
                children: [
                  ListTile(
                    title: Text('当前播放列表(${viewModel.songList.length})首'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: viewModel.changePlayMode,
                            icon: Icon(viewModel.songsPlayMode.iconData)),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.download)),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.delete)),
                      ],
                    ),
                  ),
                  ...viewModel.songList
                      .map((e) => ListTile(
                            onTap: () {
                              viewModel.playSong(e);
                            },
                            title: Text(
                              e.name,
                              style: TextStyle(
                                  color: viewModel.currentPlayingSong == e
                                      ? Colors.redAccent
                                      : null),
                            ),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.clear)),
                          ))
                      .toList()
                ],
              );
            }));
  }
}
