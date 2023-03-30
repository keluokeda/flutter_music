import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/entity/album_item.dart';

class AlbumView extends StatelessWidget {
  final AlbumItem item;

  final double? width;

  const AlbumView(this.item, this.width, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/app/album', arguments: item.id);
      },
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: CachedNetworkImage(
              imageUrl: item.imageUrl,
              memCacheHeight: 200,
              memCacheWidth: 200,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(2),
              width: width,
              // height: horizontal ? double.infinity : null,
              color: Colors.black.withOpacity(0.4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                    maxLines: 1,
                  ),
                  Text(
                    item.artist,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
