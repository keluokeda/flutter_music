import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/entity/artist_album_entity.dart';
import 'package:music/pages/artist_detail/artist_album_view_model.dart';
import 'package:provider/provider.dart';

class ArtistAlbumPage extends StatefulWidget {
  final int id;

  const ArtistAlbumPage(this.id, {Key? key}) : super(key: key);

  @override
  State<ArtistAlbumPage> createState() => _ArtistAlbumPageState();
}

class _ArtistAlbumPageState extends State<ArtistAlbumPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ChangeNotifierProvider(
      create: (_) => ArtistAlbumViewModel(widget.id),
      child: Consumer<ArtistAlbumViewModel>(
        builder: (_, viewModel, __) {
          final data = viewModel.optional?.data;
          if (data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return GridView.count(
            crossAxisCount: 3,
            padding: const EdgeInsets.all(8),
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: data.map((e) => _buildAlbum(context, e)).toList(),
          );
        },
      ),
    );
  }

  Widget _buildAlbum(BuildContext context, ArtistAlbumHotAlbums album) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/app/album', arguments: album.id);
      },
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: album.picUrl ?? '',
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.black.withOpacity(0.4),
              width: double.infinity,
              padding: const EdgeInsets.all(4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    album.name ?? '',
                    maxLines: 1,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Text(
                    album.publishTimeString(),
                    maxLines: 1,
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
