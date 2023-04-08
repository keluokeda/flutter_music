import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/entity/artist_album_entity.dart';
import 'package:music/entity/artist_mv_entity.dart';
import 'package:music/main.dart';
import 'package:music/pages/artist_detail/artist_album_view_model.dart';
import 'package:music/pages/artist_detail/artist_mv_view_model.dart';
import 'package:provider/provider.dart';

class ArtistMVPage extends StatefulWidget {
  final int id;

  const ArtistMVPage(this.id, {Key? key}) : super(key: key);

  @override
  State<ArtistMVPage> createState() => _ArtistMVPageState();
}

class _ArtistMVPageState extends State<ArtistMVPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ChangeNotifierProvider(
      create: (_) => ArtistMVViewModel(widget.id),
      child: Consumer<ArtistMVViewModel>(
        builder: (_, viewModel, __) {
          final data = viewModel.optional?.data;
          if (data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(
            children: data.map((e) => _buildMV(context, e)).toList(),
          );
        },
      ),
    );
  }

  Widget _buildMV(BuildContext context, ArtistMvMvs mv) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imageWidth = screenWidth / 3;
    final imageHeight = imageWidth * 420 / 640;
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/app/mv', arguments: mv.id);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: mv.imgurl ?? '',
              width: imageWidth,
              height: imageHeight,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 8),
                height: imageHeight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      mv.name ?? '',
                      style: Theme.of(context).textTheme.titleMedium,
                      maxLines: 2,
                    ),
                    Text(
                      mv.publishTime ?? '',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      "${mv.playCount!.formatNumber()}播放",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
