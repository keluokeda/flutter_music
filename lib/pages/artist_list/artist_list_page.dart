import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:music/pages/artist_list/artist_list_view_model.dart';
import 'package:provider/provider.dart';

class ArtistListPage extends StatelessWidget {
  const ArtistListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ArtistListViewModel(),
      child: Consumer<ArtistListViewModel>(
        builder: (_, viewModel, __) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('全部歌手'),
            ),
            body: EasyRefresh(
                controller: viewModel.easyRefreshController,
                header: const MaterialHeader(),
                onLoad: () async {
                  await viewModel.loadMore();
                },
                onRefresh: () async {
                  await viewModel.refresh();
                },
                child: GridView.count(
                  crossAxisCount: 3,
                  children: viewModel.list
                      .map((e) => InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed('/artist/detail', arguments: e.id);
                            },
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CachedNetworkImage(
                                  imageUrl: e.img1v1Url ?? '',
                                  memCacheHeight: 200,
                                  memCacheWidth: 200,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  width: double.infinity,
                                  color: Colors.black.withOpacity(0.3),
                                  child: Text(
                                    e.name ?? '',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ))
                      .toList(),
                )),
          );
        },
      ),
    );
  }
}
