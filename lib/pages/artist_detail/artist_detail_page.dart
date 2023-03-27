import 'package:flutter/material.dart';
import 'package:music/pages/artist_detail/artist_songs_page.dart';

class ArtistDetailPage extends StatelessWidget {
  const ArtistDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabNames = ['简介', "歌曲", '专辑', 'MV'];
    final id = ModalRoute.of(context)?.settings.arguments as int;
    return DefaultTabController(
        length: tabNames.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('王强'),
            bottom: TabBar(
                tabs: tabNames
                    .map((e) => Tab(
                          text: e,
                        ))
                    .toList()),
          ),
          body: TabBarView(children: [
            Container(
              color: Colors.orange,
            ),
            ArtistSongsPage(id),
            Container(
              color: Colors.redAccent,
            ),
            Container(
              color: Colors.blueAccent,
            ),
          ]),
        ));
  }
}
