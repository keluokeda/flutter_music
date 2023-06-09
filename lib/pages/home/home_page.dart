import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/pages/home/home_view_model.dart';
import 'package:music/widget/album_view.dart';
import 'package:music/widget/mv_item_view.dart';
import 'package:music/widget/playlist_view.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel(),
      child: Consumer<HomeViewModel>(
        builder: (_, viewModel, __) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('首页'),
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))
              ],
            ),
            body: _buildBody(context, viewModel),
          );
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context, HomeViewModel viewModel) {
    final data = viewModel.homeViewData;

    if (data == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    double width = 100;
    return RefreshIndicator(
      onRefresh: viewModel.loadContent,
      child: ListView(
        children: [
          Row(
            children: [
              _buildHeaderAction(context, Icons.calendar_month, "每日推荐", () {
                Navigator.of(context).pushNamed('/recommend/songs');
              }),
              _buildHeaderAction(context, Icons.radio, "私人FM", () {}),
              _buildHeaderAction(context, Icons.queue_music, "歌单广场", () {
                Navigator.of(context).pushNamed('/playlist/square');
              }),
              _buildHeaderAction(context, Icons.bar_chart, "排行榜", () {}),
            ],
          ),
          const ListTile(
            title: Row(
              children: [
                Text('推荐歌单'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              height: width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: data.recommendPlaylist
                    .map((e) => Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            PlaylistView(e, width),
                            const SizedBox(
                              width: 8,
                            )
                          ],
                        ))
                    .toList(),
              ),
            ),
          ),
          ListTile(
            title: const Text('最新专辑'),
            trailing: const Text('更多'),
            onTap: () {
              Navigator.of(context).pushNamed('/album/square');
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              height: width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: data.albumList
                    .map((e) => Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AlbumView(e, width),
                            const SizedBox(
                              width: 8,
                            )
                          ],
                        ))
                    .toList(),
              ),
            ),
          ),
          ListTile(
            title: const Text('热门歌手'),
            trailing: const Text('更多'),
            onTap: () {
              Navigator.of(context).pushNamed('/artist/list');
            },
          ),
          SizedBox(
            height: 200,
            child: GridView.count(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              crossAxisCount: 2,
              children: data.artists!
                  .map((e) => InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed('/artist/detail', arguments: e.id);
                        },
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Stack(
                            children: [
                              CachedNetworkImage(
                                imageUrl: e.img1v1Url ?? '',
                                fit: BoxFit.cover,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.black.withOpacity(0.3),
                                  padding: const EdgeInsets.all(4),
                                  child: Text(
                                    e.name ?? '',
                                    style: const TextStyle(color: Colors.white),
                                    maxLines: 1,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
          ListTile(
            title: const Text('热门MV'),
            trailing: const Text('更多'),
            onTap: () {
              Navigator.of(context).pushNamed('/mv/all');
            },
          ),
          GridView.count(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            crossAxisCount: 2,
            shrinkWrap: true,
            childAspectRatio: 20 / 17,
            //禁止无限高度
            physics: const NeverScrollableScrollPhysics(),
            children:
                data.mvList!.map((e) => MVItemView(e.toMVItem())).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildHeaderAction(BuildContext context, IconData iconData,
      String title, VoidCallback onTap) {
    return Expanded(
        child: InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 16,
          ),
          Icon(
            iconData,
            size: 40,
            color: Colors.redAccent,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(title),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    ));
  }
}
