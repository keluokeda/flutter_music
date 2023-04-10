import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/entity/mv_item.dart';
import 'package:music/main.dart';

class MVItemView extends StatelessWidget {
  final MVItem mvItem;

  const MVItemView(this.mvItem, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/app/mv', arguments: mvItem.id);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CachedNetworkImage(imageUrl: mvItem.image),
              Container(
                color: Colors.black.withOpacity(0.3),
                padding: const EdgeInsets.all(6),
                width: double.infinity,
                child: Row(
                  children: [
                    Text(
                      '${mvItem.playCount.formatNumber()}播放',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.white, fontSize: 10),
                    ),
                    const Spacer(),
                    Text(
                      mvItem.duration.formatDuration(),
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.white, fontSize: 10),
                    ),
                  ],
                ),
              )
            ],
          ),
          Text(
            mvItem.name,
            maxLines: 1,
          ),
          Text(
            mvItem.artistName,
            style: Theme.of(context).textTheme.bodySmall,
            maxLines: 1,
          )
        ],
      ),
    );
  }
}
