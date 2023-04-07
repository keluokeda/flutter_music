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
                ),
                () {}),
            _buildIconTextButton(
                Icon(
                  Icons.add_photo_alternate_outlined,
                  color: data.collected ? Colors.red : Colors.grey,
                ),
                Text(
                  data.subCount.formatNumber(),
                  style: const TextStyle(fontSize: 11),
                ),
                () {}),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CachedNetworkImage(imageUrl: item.cover ?? ''),
            Container(
              padding: const EdgeInsets.all(4),
              child: Text(
                item.name ?? '',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const Divider(
              height: 1,
            ),
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
          padding: const EdgeInsets.all(16.0),
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
