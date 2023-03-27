import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:music/entity/playlist_detail_view_data.dart';

class PlaylistInfoPage extends StatelessWidget {
  const PlaylistInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PlaylistDetailViewData viewData =
        ModalRoute.of(context)?.settings.arguments as PlaylistDetailViewData;

    return Scaffold(
      appBar: AppBar(
        title: Text(viewData.playlistDetailEntity.playlist?.name ?? ''),
        // actions: [
        //   IconButton(
        //       onPressed: () async {
        //         await _saveImageToGallery(viewData);
        //       },
        //       icon: const Icon(Icons.add_photo_alternate))
        // ],
      ),
      body: ListView(
        children: [
          CachedNetworkImage(
              imageUrl:
                  viewData.playlistDetailEntity.playlist?.coverImgUrl ?? ''),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Wrap(
              spacing: 4,
              children: (viewData.playlistDetailEntity.playlist?.tags ?? [])
                  .map((e) => Chip(label: Text(e)))
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child:
                Text(viewData.playlistDetailEntity.playlist?.description ?? ""),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: OutlinedButton(
                onPressed: () {
                  _saveImageToGallery(context, viewData);
                },
                child: const Text('保存封面到相册')),
          )
        ],
      ),
    );
  }

  Future<void> _saveImageToGallery(
      BuildContext context, PlaylistDetailViewData viewData) async {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: const Text('提示'),
              content: const Text('保存成功'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('确定'))
              ],
            ));

    final result = await GallerySaver.saveImage(
        viewData.playlistDetailEntity.playlist?.coverImgUrl ?? '');
    if (kDebugMode) {
      print('保存图片到相册的结果是 $result');
    }
  }
}
