import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/api/data_store.dart';
import 'package:music/entity/user_playlist_entity.dart';
import 'package:music/pages/common/base_content_page.dart';
import 'package:music/pages/user_playlist/user_playlist_view_model.dart';

class UserPlayListPage
    extends BaseContentPage<UserPlaylistViewModel, UserPlaylistEntity> {
  const UserPlayListPage({super.key});

  @override
  Widget buildContent(BuildContext context, UserPlaylistEntity data,
      UserPlaylistViewModel viewModel) {
    return ListView(
      children: (data.playlist ?? []).map((e) {
        ///是否是用户的歌单
        final bool isUserPlaylist = e.userId == DataStore.instance.getUserId();
        return ListTile(
          onTap: () {
            Navigator.of(context)
                .pushNamed('/playlist/detail', arguments: e.id);
          },
          title: Text(
            e.name ?? '',
            maxLines: 1,
          ),
          trailing: IconButton(
              onPressed: () {
                _showActionsDialog(context, viewModel, e, isUserPlaylist);
              },
              icon: const Icon(Icons.more_vert)),
          subtitle: Text(
            '${e.trackCount}首 ${e.userId == DataStore.instance.getUserId() ? '' : 'by${e.creator?.nickname}'}',
            maxLines: 1,
          ),
          leading: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              shape: BoxShape.rectangle,
            ),
            child: CachedNetworkImage(
              imageUrl: e.coverImgUrl ?? '',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  UserPlaylistViewModel buildViewModel(BuildContext context) {
    return UserPlaylistViewModel();
  }

  @override
  AppBar buildAppBar(BuildContext context, UserPlaylistViewModel viewModel) {
    return AppBar(
      title: Text(getTitle()),
      actions: [
        IconButton(
            onPressed: () async {
              final result =
                  await Navigator.of(context).pushNamed('/playlist/new');
              if (result == true) {
                viewModel.loadContent();
              }
            },
            icon: const Icon(Icons.add))
      ],
    );
  }

  @override
  String getTitle() {
    return "我的歌单";
  }

  void _showActionsDialog(BuildContext context, UserPlaylistViewModel viewModel,
      UserPlaylistPlaylist playlist, bool isUserPlaylist) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ListView(
              children: [
                ListTile(
                  title: Text(playlist.name ?? ''),
                ),
                ListTile(
                  leading: const Icon(Icons.download),
                  title: const Text('下载'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.share),
                  title: const Text('分享'),
                  onTap: () {},
                ),
                if (isUserPlaylist)
                  ListTile(
                    leading: const Icon(Icons.edit),
                    title: const Text('编辑歌单信息'),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/playlist/info/edit',
                          arguments: playlist.id);
                    },
                  ),
                ListTile(
                  leading: const Icon(Icons.delete),
                  title: const Text('删除'),
                  onTap: () {
                    Navigator.of(context).pop();
                    viewModel.deletePlaylist(playlist.id ?? 0);
                  },
                ),
              ],
            ));
  }
}
