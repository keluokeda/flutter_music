import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/entity/album_detail_entity.dart';
import 'package:music/entity/song_item.dart';
import 'package:music/entity/songs_edit_request.dart';
import 'package:music/pages/album_detail/album_detail_view_model.dart';
import 'package:music/pages/common/base_content_page.dart';
import 'package:music/widget/song_list_tile.dart';

import '../../entity/album_view_data.dart';

class AlbumDetailPage
    extends BaseContentPage<AlbumDetailViewModel, AlbumViewData> {
  const AlbumDetailPage({super.key});

  @override
  Widget buildContent(BuildContext context, AlbumViewData data,
      AlbumDetailViewModel viewModel) {
    const imageSize = 120.0;
    return Column(
      children: [
        _buildDataContent(data.albumDetailEntity, imageSize, context),
        Card(
          margin: const EdgeInsets.all(16),
          child: Row(
            children: [
              _buildBottomActionView(
                  context,
                  data.albumDynamicEntity.isSub == true
                      ? Icons.done
                      : Icons.add_photo_alternate_outlined,
                  data.albumDynamicEntity.subCount.toString(),
                  viewModel.collect),
              _buildBottomActionView(context, Icons.comment_outlined,
                  data.albumDynamicEntity.commentCount.toString(), () {}),
              _buildBottomActionView(context, Icons.share,
                  data.albumDynamicEntity.shareCount.toString(), () {}),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }

  Widget _buildDataContent(
      AlbumDetailEntity data, double imageSize, BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CachedNetworkImage(
                  imageUrl: data.album?.picUrl ?? '',
                  width: imageSize,
                  height: imageSize,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: SizedBox(
                    height: imageSize,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.album?.name ?? '',
                          style: Theme.of(context).textTheme.titleLarge,
                          maxLines: 2,
                        ),
                        GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                children: [
                                  const Text('歌手：'),
                                  Text(data.album?.artist?.name ?? ''),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.color,
                                  )
                                ],
                              ),
                            )),
                        Text(
                          "发行时间：${data.album?.formatPublishTime()}",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(data.album?.description ?? ''),
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {}, icon: const Icon(Icons.play_circle_outline)),
            title: const Text('播放全部'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.download)),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/songs/edit',
                          arguments: SongsEditRequest(
                              data.songs?.map((e) => e.toSongItem()).toList() ??
                                  [],
                              false,
                              null));
                    },
                    icon: const Icon(Icons.format_list_bulleted)),
              ],
            ),
          ),
          ...data.songs!.map((e) {
            final index = data.songs!.indexOf(e);
            final SongItem item = e.toSongItem();
            return SongListTile(item, index
                // onTap: () {},
                // leading: Text(
                //   "${index + 1}",
                //   style: Theme.of(context).textTheme.titleMedium,
                // ),
                // title: Text(e.name ?? ''),
                // subtitle: Text(e.ar?[0].name ?? ''),
                // trailing: IconButton(
                //     onPressed: () {}, icon: const Icon(Icons.more_vert)),
                );
          }),
        ],
      ),
    );
  }

  Widget _buildBottomActionView(BuildContext context, IconData iconData,
      String text, VoidCallback onTap) {
    return Expanded(
        child: InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(iconData), Text(text)],
        ),
      ),
    ));
  }

  @override
  AlbumDetailViewModel buildViewModel(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments as int;
    return AlbumDetailViewModel(id);
  }

  @override
  AppBar buildAppBar(BuildContext context, AlbumDetailViewModel viewModel) {
    final data = viewModel.optional?.data;
    if (data == null) {
      return super.buildAppBar(context, viewModel);
    }

    return AppBar(
      title: Text(getTitle()),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.play_arrow_outlined),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.download))
      ],
    );
  }

  @override
  String getTitle() {
    return "专辑";
  }
}