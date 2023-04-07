import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:music/entity/song_item.dart';
import 'package:music/pages/common/music_view_model.dart';
import 'package:provider/provider.dart';

class SongListTile extends StatelessWidget {
  final SongItem songItem;
  final int? index;

  final WidgetBuilder? dialogActionsBuilder;

  const SongListTile(this.songItem, this.index,
      {super.key, this.dialogActionsBuilder});

  @override
  Widget build(BuildContext context) {
    final musicViewModel = context.read<MusicViewModel>();

    return ListTile(
      onTap: () {
        //播放音乐
        // musicViewModel.playMusic(songItem.id);
        // musicViewModel.insertMusicList([songItem]);
        musicViewModel.playSong(songItem);
      },
      leading: index == null
          ? CachedNetworkImage(
              imageUrl: songItem.album.imageUrl,
              width: 40,
              height: 40,
            )
          : IconButton(
              onPressed: null,
              icon: Text(
                ((index ?? 0) + 1).toString(),
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
      title: Text(
        songItem.name,
        maxLines: 1,
      ),
      subtitle: Text(
        "${songItem.singers.map((e) => e.name).join('/')} - ${songItem.album.name}",
        maxLines: 1,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (songItem.mv != 0)
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed('/app/mv', arguments: songItem.mv);
                },
                icon: const Icon(Icons.play_circle)),
          IconButton(
              onPressed: () {
                _showBottomSheetDialog(context, musicViewModel);
              },
              icon: const Icon(Icons.more_vert))
        ],
      ),
    );
  }

  void _showBottomSheetDialog(
      BuildContext context, MusicViewModel musicViewModel) {
    showModalBottomSheet(
        context: context,
        builder: (newContext) => ListView(
              children: [
                ListTile(
                  leading: CachedNetworkImage(
                    imageUrl: songItem.album.imageUrl,
                    width: 48,
                    height: 48,
                  ),
                  title: Text(songItem.name),
                  subtitle: Text(
                      songItem.singers.map((e) => e.name).toList().join('/')),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.clear)),
                ),
                const Divider(
                  height: 1,
                ),
                ListTile(
                  onTap: () {
                    if (kDebugMode) {
                      print('歌曲的id是 ${songItem.id}');
                    }
                    musicViewModel.playSongNext(songItem);
                    Navigator.of(context).pop();
                  },
                  leading: const Icon(Icons.play_circle_outline),
                  title: const Text('下一首播放'),
                ),
                ListTile(
                  onTap: () async {
                    final result = await Navigator.of(context)
                        .pushNamed('/playlist/selected');
                    final id = result as int?;
                    if (id != null) {
                      // musicViewModel.insertMusicToPlaylist(
                      //     id, songItem.id.toString(), true);
                      musicViewModel.insertOrRemoveMusicListToPlaylist(
                          [songItem.id], id, true);
                    }
                  },
                  leading: const Icon(Icons.add_photo_alternate_outlined),
                  title: const Text('收藏到歌单'),
                ),
                ListTile(
                  onTap: () {
                    if (kDebugMode) {
                      print('歌曲的id是 ${songItem.id}');
                    }
                    // musicViewModel.playSongNext(songItem);
                    Navigator.of(context).pop();
                  },
                  leading: const Icon(Icons.comment_outlined),
                  title: const Text('评论'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.share),
                  title: const Text('分享'),
                ),
                Column(
                  children: songItem.singers
                      .map((e) => ListTile(
                            onTap: () {
                              if (kDebugMode) {
                                print('歌手的id 是 ${e.id}');
                              }
                              Navigator.of(context).pop();
                              Navigator.of(context)
                                  .pushNamed('/artist/detail', arguments: e.id);
                            },
                            leading: const Icon(Icons.account_circle_outlined),
                            title: Text('歌手：${e.name}'),
                          ))
                      .toList(),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context)
                        .pushNamed('/app/album', arguments: songItem.album.id);
                  },
                  leading: const Icon(Icons.album_outlined),
                  title: Text('专辑：${songItem.album.name}'),
                ),
                if (dialogActionsBuilder != null)
                  dialogActionsBuilder!(context),
              ],
            ));
  }
}
