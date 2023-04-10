import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:music/api/data_store.dart';
import 'package:music/entity/playlist_detail_view_data.dart';
import 'package:music/entity/share_resource_type.dart';
import 'package:music/entity/user_list_request.dart';
import 'package:music/entity/user_list_type.dart';
import 'package:music/main.dart';
import 'package:music/pages/common/base_content_page.dart';
import 'package:music/pages/playlist_detail/playlist_detail_view_model.dart';
import 'package:music/widget/song_list_header_tile.dart';
import 'package:music/widget/song_list_tile.dart';
import 'package:sticky_headers/sticky_headers.dart';

class PlaylistDetailPage
    extends BaseContentPage<PlaylistDetailViewModel, PlaylistDetailViewData> {
  const PlaylistDetailPage({super.key});

  @override
  Widget buildContent(BuildContext context, PlaylistDetailViewData data,
      PlaylistDetailViewModel viewModel) {
    final isCurrentUser = DataStore.instance.getUserId() ==
        data.playlistDetailEntity.playlist?.creator?.userId;
    final List<Widget> songList = [
      _buildHeader(context, data, viewModel, isCurrentUser)
    ];
    // songList.insert(0, );

    if (data.playlistTracksEntity.songs?.isEmpty == true) {
      // songList.add(Container(
      //   height: 120,
      //   alignment: Alignment.center,
      //   child: OutlinedButton(onPressed: () {}, child: const Text('添加歌曲')),
      // ));
    } else {
      // songList.add(ListTile(
      //   leading: IconButton(
      //       onPressed: () {}, icon: const Icon(Icons.play_circle_outline)),
      //   title: Text('播放全部 (${data.playlistTracksEntity.songs?.length})'),
      //   trailing: Row(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       IconButton(onPressed: () {}, icon: const Icon(Icons.download)),
      //       IconButton(
      //           onPressed: () {
      //             Navigator.of(context).pushNamed('/songs/edit',
      //                 arguments: SongsEditRequest(
      //                     data.playlistTracksEntity.songs
      //                             ?.map((e) => e.toSongItem())
      //                             .toList() ??
      //                         [],
      //                     isCurrentUser,
      //                     viewModel.id));
      //           },
      //           icon: const Icon(Icons.format_list_bulleted)),
      //     ],
      //   ),
      // ));

      songList.add(StickyHeader(
          header: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: SongListHeaderTile(
                songs: (data.playlistTracksEntity.songs ?? [])
                    .map((e) => e.toSongItem())
                    .toList(),
                isUser: isCurrentUser,
                playlistId: viewModel.id),
          ),
          content: Column(
            children: (data.playlistTracksEntity.songs ?? [])
                .map((e) => SongListTile(
                      e.toSongItem(),
                      (data.playlistTracksEntity.songs ?? []).indexOf(e),
                      dialogActionsBuilder: isCurrentUser
                          ? (_) {
                              return ListTile(
                                leading: const Icon(Icons.delete_forever),
                                title: const Text('删除'),
                                onTap: () {
                                  Navigator.of(context).pop();
                                  viewModel.deleteMusicToPlaylist(e);
                                },
                              );
                            }
                          : null,
                    ))
                .toList(),
          )));

      // songList.add(SongListHeaderTile(
      //     songs: (data.playlistTracksEntity.songs ?? [])
      //         .map((e) => e.toSongItem())
      //         .toList(),
      //     isUser: isCurrentUser,
      //     playlistId: viewModel.id));
      // songList.addAll(
      //     (data.playlistTracksEntity.songs ?? [])
      //     .map((e) => SongListTile(
      //           e.toSongItem(),
      //           (data.playlistTracksEntity.songs ?? []).indexOf(e),
      //           dialogActionsBuilder: isCurrentUser
      //               ? (_) {
      //                   return ListTile(
      //                     leading: const Icon(Icons.delete_forever),
      //                     title: const Text('删除'),
      //                     onTap: () {
      //                       Navigator.of(context).pop();
      //                       viewModel.deleteMusicToPlaylist(e);
      //                     },
      //                   );
      //                 }
      //               : null,
      //         ))
      //     .toList()
      // );
    }

    songList.add(_buildFooter(context, data));

    return ListView(children: songList);
  }

  Widget _buildHeader(BuildContext context, PlaylistDetailViewData data,
      PlaylistDetailViewModel viewModel, bool isCurrentUser) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                onTap: () {
                  _toPlaylistInfo(context, data);
                },
                child: CachedNetworkImage(
                    width: 120,
                    height: 120,
                    imageUrl:
                        data.playlistDetailEntity.playlist?.coverImgUrl ?? ""),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      data.playlistDetailEntity.playlist?.name ?? '',
                      maxLines: 2,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 12,
                          backgroundImage: CachedNetworkImageProvider(data
                                  .playlistDetailEntity
                                  .playlist
                                  ?.creator
                                  ?.avatarUrl ??
                              ''),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text(
                            data.playlistDetailEntity.playlist?.creator
                                    ?.nickname ??
                                '',
                            maxLines: 1,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          InkWell(
            onTap: () {
              _toPlaylistInfo(context, data);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    data.playlistDetailEntity.playlist?.description ?? '',
                    maxLines: 1,
                    style: Theme.of(context).textTheme.bodySmall,
                    overflow: TextOverflow.ellipsis,
                  )),
                  const Icon(Icons.keyboard_arrow_right)
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: OutlinedButton.icon(
                      onPressed: () {
                        final request = ShareResourceRequest(
                            viewModel.id,
                            data.playlistDetailEntity.playlist?.name ?? '',
                            data.playlistDetailEntity.playlist?.creator
                                    ?.nickname ??
                                '',
                            data.playlistDetailEntity.playlist?.coverImgUrl ??
                                "",
                            ShareResourceType.playlist);

                        Navigator.of(context)
                            .pushNamed('/share/resource', arguments: request);
                      },
                      icon: const Icon(Icons.share),
                      label: Text(
                          style: const TextStyle(fontSize: 12),
                          maxLines: 1,
                          '${data.playlistDetailDynamicEntity.shareCount?.formatNumber()}'))),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                  child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.comment_outlined),
                      label: Text(
                          maxLines: 1,
                          style: const TextStyle(fontSize: 12),
                          '${data.playlistDetailDynamicEntity.commentCount?.formatNumber(needDecimal: false)}'))),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                  child: OutlinedButton.icon(
                      //自己创建的不可以点
                      onPressed: isCurrentUser ? null : viewModel.toggleCollect,
                      icon: Icon(
                          data.playlistDetailDynamicEntity.subscribed == true ||
                                  isCurrentUser
                              ? Icons.book
                              : Icons.add_chart),
                      label: Text(
                        style: const TextStyle(fontSize: 12),
                        '${data.playlistDetailDynamicEntity.bookedCount?.formatNumber(needDecimal: false)}',
                        maxLines: 1,
                      ))),
            ],
          )
        ],
      ),
    );
  }

  void _toPlaylistInfo(BuildContext context, PlaylistDetailViewData data) {
    Navigator.of(context).pushNamed('/playlist/info', arguments: data);
  }

  Widget _buildFooter(BuildContext context, PlaylistDetailViewData data) {
    final subscribers = (data.playlistDetailEntity.playlist?.subscribers ?? [])
        .take(5)
        .toList();

    if (subscribers.isEmpty) {
      return Container();
    }

    return ListTile(
      onTap: () {
        // Navigator.of(context).pushNamed('/playlist/subscribers',
        //     arguments: data.playlistDetailEntity.playlist?.id);
        Navigator.of(context).pushNamed('/user/list',
            arguments: UserListRequest(data.playlistDetailEntity.playlist!.id!,
                UserListType.playlistSubscribers, '收藏者'));
      },
      title: Row(
        children: subscribers
            .map((e) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundImage:
                        CachedNetworkImageProvider(e.avatarUrl ?? ''),
                  ),
                ))
            .toList(),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
              "${data.playlistDetailDynamicEntity.bookedCount?.formatNumber()}人收藏"),
          Icon(
            Icons.keyboard_arrow_right,
            color: Theme.of(context).textTheme.bodyMedium?.color,
          )
        ],
      ),
    );
  }

  @override
  PlaylistDetailViewModel buildViewModel(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments as int;

    return PlaylistDetailViewModel(id);
  }

  @override
  AppBar buildAppBar(BuildContext context, PlaylistDetailViewModel viewModel) {
    final data = viewModel.optional?.data;
    if (data == null) {
      return super.buildAppBar(context, viewModel);
    }

    final isCurrentUser = DataStore.instance.getUserId() ==
        data.playlistDetailEntity.playlist?.creator?.userId;
    return AppBar(
      title: Text(getTitle()),
      actions: [
        if (data.playlistTracksEntity.songs?.isNotEmpty == true)
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/playlist/search',
                    arguments: data.playlistTracksEntity.songs);
              },
              icon: const Icon(Icons.search)),
        PopupMenuButton<int>(
          itemBuilder: (_) => [
            if (isCurrentUser)
              const PopupMenuItem(
                value: 0,
                child: Text('添加歌曲'),
              ),
            if (isCurrentUser)
              const PopupMenuItem(
                value: 1,
                child: Text('编辑歌单信息'),
              ),
            if (isCurrentUser)
              const PopupMenuItem(
                value: 2,
                child: Text('删除歌单'),
              ),
            const PopupMenuItem(
              value: 3,
              child: Text('选择歌曲排序'),
            ),
            if (!isCurrentUser)
              const PopupMenuItem(
                value: 4,
                child: Text('举报'),
              ),
          ],
          onSelected: (value) async {
            final ns = Navigator.of(context);
            if (kDebugMode) {
              print('选中了 $value');
            }
            if (value == 1) {
              //编辑歌单
              final result = await ns.pushNamed('/playlist/info/edit',
                  arguments: viewModel.id);
              if (result == true) {
                viewModel.loadContent();
              }
            } else if (value == 2) {
              //删除歌单
              await viewModel.deletePlaylist();
              ns.pop();
            }
          },
        )
      ],
    );
  }

  @override
  String getTitle() {
    return "歌单";
  }
}
