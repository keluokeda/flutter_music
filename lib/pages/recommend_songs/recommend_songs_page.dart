import 'package:flutter/material.dart';
import 'package:music/entity/song_item.dart';
import 'package:music/pages/common/base_content_page.dart';
import 'package:music/pages/recommend_songs/recommend_songs_view_model.dart';
import 'package:music/widget/song_list_tile.dart';

import '../../entity/recommend_songs_entity.dart';

class RecommendSongsPage extends BaseContentPage<RecommendSongsViewModel,
    List<RecommendSongsDataDailySongs>> {
  const RecommendSongsPage({super.key});

  @override
  Widget buildContent(
      BuildContext context,
      List<RecommendSongsDataDailySongs> data,
      RecommendSongsViewModel viewModel) {
    return ListView(
      children: data.map((e) => _buildSongItem(e, context)).toList(),
    );
  }

  Widget _buildSongItem(RecommendSongsDataDailySongs e, BuildContext context) {
    final SongItem songItem = SongItem(
        e.id ?? 0,
        e.name ?? '',
        e.ar?.map((el) => Singer(el.id ?? 0, el.name ?? '')).toList() ?? [],
        e.alia ?? [],
        Album(e.al?.id ?? 0, e.al?.name ?? '', e.al?.picUrl ?? ''),
        e.mv ?? 0);

    return SongListTile(songItem, null);
  }



  @override
  RecommendSongsViewModel buildViewModel(BuildContext context) {
    return RecommendSongsViewModel();
  }

  @override
  String getTitle() {
    return "每日推荐";
  }
}
