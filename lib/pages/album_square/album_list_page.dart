import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:music/pages/album_square/album_list_view_model.dart';
import 'package:music/widget/album_view.dart';
import 'package:provider/provider.dart';

class AlbumListPage extends StatefulWidget {
  final String area;

  const AlbumListPage(this.area, {super.key});

  @override
  State<AlbumListPage> createState() => _AlbumListPageState();
}

class _AlbumListPageState extends State<AlbumListPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ChangeNotifierProvider(
      create: (_) => AlbumListViewModel(widget.area),
      child: Consumer<AlbumListViewModel>(
        builder: (_, viewModel, __) {
          return EasyRefresh(
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
              children: viewModel.list
                  .map((e) => AlbumView(e, double.infinity))
                  .toList(),
            ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
