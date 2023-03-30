import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/entity/playlist_item.dart';

class PlaylistView extends StatelessWidget {
  final PlaylistItem playlistItem;

  final double? width;

  const PlaylistView(this.playlistItem, this.width, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed('/playlist/detail', arguments: playlistItem.id);
      },
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: CachedNetworkImage(imageUrl: playlistItem.image),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(2),
              width: width,
              // height: horizontal ? double.infinity : null,
              color: Colors.black.withOpacity(0.4),
              child: Text(
                '${playlistItem.name}\n',
                style: const TextStyle(color: Colors.white, fontSize: 12),
                maxLines: 2,
              ),
            ),
          )
        ],
      ),
    );
  }
}
