import 'package:flutter/material.dart';
import 'package:music/pages/artist_detail/artist_album_page.dart';
import 'package:music/pages/artist_detail/artist_desc_page.dart';
import 'package:music/pages/artist_detail/artist_detail_view_model.dart';
import 'package:music/pages/artist_detail/artist_mv_page.dart';
import 'package:music/pages/artist_detail/artist_songs_page.dart';
import 'package:provider/provider.dart';

class ArtistDetailPage extends StatelessWidget {
  const ArtistDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabNames = ["歌曲", '简介', '专辑', 'MV'];
    final id = ModalRoute.of(context)?.settings.arguments as int;
    return ChangeNotifierProvider(
      create: (_) => ArtistDetailViewModel(id),
      child: Consumer<ArtistDetailViewModel>(
        builder: (_, viewModel, __) {
          return DefaultTabController(
              length: tabNames.length,
              child: Scaffold(
                appBar: AppBar(
                  title: Text(viewModel.title),
                  bottom: TabBar(
                      tabs: tabNames
                          .map((e) => Tab(
                                text: e,
                              ))
                          .toList()),
                ),
                body: TabBarView(children: [
                  ArtistSongsPage(id),
                  ArtistDescPage(id),
                  ArtistAlbumPage(id),
                  ArtistMVPage(id)
                ]),
              ));
        },
      ),
    );
  }
}
