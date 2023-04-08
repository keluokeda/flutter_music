import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/entity/mv_play_entity.dart';
import 'package:music/main.dart';
import 'package:music/pages/common/base_content_page.dart';
import 'package:music/pages/mv/mv_play_view_model.dart';
import 'package:video_player/video_player.dart';

import '../../entity/simi_mv_entity.dart';

class MVPlayPage extends BaseContentPage<MVPlayViewModel, MVPlayEntity> {
  const MVPlayPage({super.key});

  @override
  Widget buildContent(
      BuildContext context, MVPlayEntity data, MVPlayViewModel viewModel) {
    return Column(
      children: [
        viewModel.controller?.value.isInitialized == true
            ? AspectRatio(
                aspectRatio: viewModel.controller!.value.aspectRatio,
                child: VideoPlayer(viewModel.controller!),
              )
            : Container(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildIconTextButton(
                Icon(
                  Icons.thumb_up,
                  color: data.liked ? Colors.red : Colors.grey,
                ),
                Text(
                  data.likedCount.formatNumber(),
                  style: const TextStyle(fontSize: 11),
                ), () {
              viewModel.toggleLike(data);
            }),
            _buildIconTextButton(
                Icon(
                  Icons.add_photo_alternate_outlined,
                  color: data.collected ? Colors.red : Colors.grey,
                ),
                Text(
                  data.subCount.formatNumber(),
                  style: const TextStyle(fontSize: 11),
                ), () {
              viewModel.toggleCollect(data);
            }),
            _buildIconTextButton(
                const Icon(
                  Icons.comment_outlined,
                  color: Colors.grey,
                ),
                Text(
                  data.commentCount.formatNumber(),
                  style: const TextStyle(fontSize: 11),
                ),
                () {}),
            _buildIconTextButton(
                const Icon(
                  Icons.share,
                  color: Colors.grey,
                ),
                Text(
                  data.shareCount.formatNumber(),
                  style: const TextStyle(fontSize: 11),
                ),
                () {}),
            _buildIconTextButton(
                const Icon(
                  Icons.visibility,
                  color: Colors.grey,
                ),
                Text(
                  data.playCount.formatNumber(),
                  style: const TextStyle(fontSize: 11),
                ),
                () {}),
          ],
        ),
        const ListTile(
          title: Text('相似MV'),
        ),
        Expanded(
            child: ListView(
          children: data.mvList.map((e) => _buildMVItem(context, e)).toList(),
        ))
      ],
    );
  }

  Widget _buildMVItem(BuildContext context, SimiMvMvs item) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushReplacementNamed('/app/mv', arguments: item.id);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: CachedNetworkImage(imageUrl: item.cover ?? ''),
            ),
            Expanded(
                flex: 6,
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.name ?? ''),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                            item.artists?.map((e) => e.name ?? '').join(',') ??
                                ''),
                      ),
                      Text('${item.playCount!.formatNumber()}播放')
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  @override
  AppBar buildAppBar(BuildContext context, MVPlayViewModel viewModel) {
    final name = viewModel.optional?.data?.name;
    if (name == null) {
      return super.buildAppBar(context, viewModel);
    }
    return AppBar(
      title: Text(name),
    );
  }

  Widget _buildIconTextButton(Widget icon, Widget text, VoidCallback onTap) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              icon,
              const SizedBox(
                height: 4,
              ),
              text
            ],
          ),
        ),
      ),
    );
  }

  @override
  MVPlayViewModel buildViewModel(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments as int;
    return MVPlayViewModel(id);
  }

  @override
  String getTitle() {
    return 'MV';
  }
}
