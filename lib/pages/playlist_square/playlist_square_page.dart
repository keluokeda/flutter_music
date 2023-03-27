import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:music/entity/playlist_list_entity.dart';
import 'package:music/pages/playlist_square/playlist_square_view_model.dart';
import 'package:provider/provider.dart';

class PlaylistSquarePage extends StatelessWidget {
  const PlaylistSquarePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PlaylistSquareViewModel(),
      child: Consumer<PlaylistSquareViewModel>(
        builder: (_, viewModel, __) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('歌单广场'),
              actions: [
                IconButton(
                    onPressed: () async {
                      final result = await Navigator.of(context)
                          .pushNamed('/playlist/category');
                      final category = result as String?;
                      if (category != null) {
                        viewModel.updateCategory(category);
                      }
                    },
                    icon: Text(viewModel.category)),
                PopupMenuButton<bool>(
                  itemBuilder: (_) => [
                    CheckedPopupMenuItem<bool>(
                      value: false,
                      checked: !viewModel.hot,
                      child: const Text('最新'),
                    ),
                    CheckedPopupMenuItem<bool>(
                      value: true,
                      checked: viewModel.hot,
                      child: const Text('最热'),
                    ),
                  ],
                  onSelected: (value) {
                    viewModel.updateHot(value);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.sort),
                  ),
                )
              ],
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
                padding: const EdgeInsets.all(8),
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children:
                    viewModel.list.map((e) => _buildItem(context, e)).toList(),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildItem(BuildContext context, PlaylistListPlaylists e) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/playlist/detail', arguments: e.id);
      },
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: CachedNetworkImage(imageUrl: e.coverImgUrl ?? ''),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(2),
              width: double.infinity,
              color: Colors.black.withOpacity(0.4),
              child: Text(
                '${e.name ?? ''}\n',
                style: const TextStyle(color: Colors.white, fontSize: 12),
                maxLines: 2,
              ),
            ),
          )
        ],
      ),
    );
  }
}
