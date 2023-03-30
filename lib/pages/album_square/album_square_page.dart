import 'package:flutter/material.dart';
import 'package:music/pages/album_square/album_list_page.dart';

class AlbumSquarePage extends StatelessWidget {
  const AlbumSquarePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('专辑广场'),
            bottom: TabBar(tabs: [
              ...['全部', '华语', '欧美', '韩国', '日本']
                  .map((e) => Tab(
                        text: e,
                      ))
                  .toList()
            ]),
          ),
          body: TabBarView(
              children: ['ALL', 'ZH', 'EA', 'KR', 'JP']
                  .map((e) => AlbumListPage(e))
                  .toList()),
        ));
  }
}
