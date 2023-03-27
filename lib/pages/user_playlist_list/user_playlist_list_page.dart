import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/pages/common/base_content_page.dart';
import 'package:music/pages/user_playlist_list/user_playlist_list_view_model.dart';

import '../../entity/user_playlist_entity.dart';

class UserPlaylistListPage extends BaseContentPage<UserPlaylistListViewModel,
    List<UserPlaylistPlaylist>> {
  const UserPlaylistListPage({super.key});

  @override
  Widget buildContent(BuildContext context, List<UserPlaylistPlaylist> data,
      UserPlaylistListViewModel viewModel) {
    return ListView(
      children: data
          .map((e) => ListTile(
                onTap: () {
                  Navigator.of(context).pop(e.id);
                },
                leading: CachedNetworkImage(
                  imageUrl: e.coverImgUrl ?? '',
                  width: 40,
                  height: 40,
                ),
                title: Text(e.name ?? ''),
                subtitle: Text('${e.trackCount}首'),
              ))
          .toList(),
    );
  }

  @override
  AppBar buildAppBar(
      BuildContext context, UserPlaylistListViewModel viewModel) {
    if (viewModel.optional?.data == null) {
      return super.buildAppBar(context, viewModel);
    }

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
  UserPlaylistListViewModel buildViewModel(BuildContext context) {
    return UserPlaylistListViewModel();
  }

  @override
  String getTitle() {
    return '选择歌单';
  }
}
