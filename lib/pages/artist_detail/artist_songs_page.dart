import 'package:flutter/material.dart';
import 'package:music/pages/artist_detail/artist_songs_view_model.dart';
import 'package:music/widget/song_list_header_tile.dart';
import 'package:music/widget/song_list_tile.dart';
import 'package:provider/provider.dart';

class ArtistSongsPage extends StatefulWidget {
  final int id;

  const ArtistSongsPage(this.id, {Key? key}) : super(key: key);

  @override
  State<ArtistSongsPage> createState() => _ArtistSongsPageState();
}

class _ArtistSongsPageState extends State<ArtistSongsPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ChangeNotifierProvider(
      create: (_) => ArtistSongsViewModel(widget.id),
      child: Consumer<ArtistSongsViewModel>(
        builder: (_, viewModel, __) {
          final data = viewModel.optional?.data;
          if (data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            children: [
              SongListHeaderTile(
                  songs: (data ?? []).map((e) => e.toSongItem()).toList(),
                  isUser: false,
                  playlistId: null),
              ...data
                  .map((e) => e.toSongItem())
                  .map((e) => SongListTile(e, null))
                  .toList()
            ],
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
