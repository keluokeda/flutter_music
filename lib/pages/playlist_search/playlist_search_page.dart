import 'package:flutter/material.dart';
import 'package:music/pages/playlist_search/playlist_search_view_model.dart';
import 'package:music/widget/song_list_tile.dart';
import 'package:provider/provider.dart';

import '../../entity/playlist_tracks_entity.dart';

class PlaylistSearch extends StatelessWidget {
  const PlaylistSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final songList =
        ModalRoute.of(context)?.settings.arguments as List<PlaylistTracksSongs>;

    return ChangeNotifierProvider(
      create: (_) =>
          PlaylistSearchViewModel(songList.map((e) => e.toSongItem()).toList()),
      child: Consumer<PlaylistSearchViewModel>(
        builder: (_, viewModel, __) {
          return Scaffold(
            appBar: AppBar(
              title: TextFormField(
                autofocus: true,
                controller: viewModel.textEditingController,
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: '搜索'),
              ),
              // title: SearchBar(
              //
              // ),
            ),
            body: ListView(
              children:
                  viewModel.result.map((e) => SongListTile(e, null)).toList(),
            ),
          );
        },
      ),
    );
  }
}
