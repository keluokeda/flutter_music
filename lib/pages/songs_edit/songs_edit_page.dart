import 'package:flutter/material.dart';
import 'package:music/entity/song_item.dart';
import 'package:music/entity/songs_edit_request.dart';
import 'package:music/pages/common/download_view_model.dart';
import 'package:music/pages/common/music_view_model.dart';
import 'package:music/pages/songs_edit/songs_edit_view_model.dart';
import 'package:provider/provider.dart';

class SongsEditPage extends StatelessWidget {
  const SongsEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final request =
        ModalRoute.of(context)?.settings.arguments as SongsEditRequest;
    return ChangeNotifierProvider(
      create: (_) => SongsEditViewModel(request.list, request.isUser),
      child: Consumer<SongsEditViewModel>(
        builder: (_, viewModel, __) {
          ///选中的歌曲数量
          int count = 0;

          ///选中的歌曲
          final targetList = <SongItem>[];

          for (var element in viewModel.songs) {
            if (element.checked) {
              count++;
              targetList.add(element.songItem);
            }
          }
          return Scaffold(
            appBar: AppBar(
              title: Text('$count'),
              actions: [
                IconButton(
                    onPressed: viewModel.loading ? null : viewModel.checkAll,
                    icon: const Text('全选')),
                IconButton(
                    onPressed: viewModel.loading
                        ? null
                        : () {
                            //播放选中的音乐
                            if (count == 0) {
                              return;
                            }
                            context
                                .read<MusicViewModel>()
                                .insertSongList(targetList);
                          },
                    icon: const Icon(Icons.play_circle)),
                IconButton(
                    onPressed: viewModel.loading
                        ? null
                        : () async {
                            final ns = Navigator.of(context);

                            final musicViewModel =
                                context.read<MusicViewModel>();

                            final pickPlaylistResult =
                                await ns.pushNamed('/playlist/selected');
                            final playlistId = pickPlaylistResult as int?;

                            if (playlistId == null) {
                              return;
                            }

                            if (count == 0) {
                              return;
                            }

                            viewModel.setLoading(true);
                            await musicViewModel
                                .insertOrRemoveMusicListToPlaylist(
                                    targetList.map((e) => e.id).toList(),
                                    playlistId,
                                    true);
                            ns.pop();
                          },
                    icon: const Icon(Icons.add_photo_alternate_outlined)),
                if (request.isLocalFile == false)
                  IconButton(
                      onPressed: viewModel.loading ? null : () {
                        context.read<DownloadViewModel>().download(targetList);
                      },
                      icon: const Icon(Icons.download)),
                IconButton(
                    onPressed: viewModel.loading
                        ? null
                        : () async {
                            if (count == 0) {
                              return;
                            }
                            final ns = Navigator.of(context);

                            final musicViewModel =
                                context.read<MusicViewModel>();

                            if (request.isLocalFile) {
                              musicViewModel.deleteLocalFile(targetList);
                              Navigator.of(context).pop();
                            }

                            if (request.isUser) {
                              //从歌单中删除
                              await musicViewModel
                                  .insertOrRemoveMusicListToPlaylist(
                                      targetList.map((e) => e.id).toList(),
                                      request.playlistId!,
                                      false);
                              ns.pop(true);
                            }
                          },
                    icon: const Icon(Icons.delete)),
              ],
            ),
            body: ReorderableListView(
              buildDefaultDragHandles: false,
              onReorder: viewModel.onReorder,
              children: [
                ...viewModel.songs
                    .map((e) => CheckboxListTile(
                        key: ValueKey(e),
                        enabled: !viewModel.loading,
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text(e.songItem.name),
                        subtitle: Text(
                          e.songItem.subTitle(),
                          maxLines: 1,
                        ),
                        value: e.checked,
                        onChanged: (value) {
                          viewModel.toggleChecked(e);
                        }))
                    .toList()
              ],
            ),
          );
        },
      ),
    );
  }
}
