import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:music/pages/playlist_subscribers/playlist_subscribers_view_model.dart';
import 'package:provider/provider.dart';

class PlaylistSubscribersPage extends StatelessWidget {
  const PlaylistSubscribersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments as int;
    return ChangeNotifierProvider(
      create: (_) {
        return PlaylistSubscribersViewModel(id);
      },
      child: Consumer<PlaylistSubscribersViewModel>(
        builder: (_, viewModel, __) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('收藏者'),
            ),
            body: EasyRefresh(
              controller: viewModel.easyRefreshController,
              header: const MaterialHeader(),
              onLoad: () async {
                await viewModel.loadMore();
              },
              onRefresh: () async {
                await viewModel.refresh();
              },
              child: ListView(
                children: viewModel.list
                    .map((e) => ListTile(
                          title: Text(
                            e.nickname ?? '',
                            maxLines: 1,
                          ),
                          leading: CircleAvatar(
                            radius: 18,
                            backgroundImage:
                                CachedNetworkImageProvider(e.avatarUrl ?? ''),
                          ),
                          subtitle: e.signature?.isEmpty == true
                              ? null
                              : Text(e.signature!,maxLines: 1,),
                          trailing: e.followed == true
                              ? TextButton(
                                  onPressed: () {
                                    viewModel.toggleFollow(e);
                                  },
                                  child: const Text('已关注'))
                              : OutlinedButton(

                                  onPressed: () {
                                    viewModel.toggleFollow(e);
                                  },
                                  child: const Text('关注')),
                        ))
                    .toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
