import 'package:flutter/material.dart';
import 'package:music/entity/playlist_category_entity.dart';
import 'package:music/pages/common/base_content_page.dart';
import 'package:music/pages/playlist_category/playlist_category_view_model.dart';

class PlaylistCategoryPage
    extends BaseContentPage<PlaylistCategoryViewModel, PlaylistCategoryEntity> {
  const PlaylistCategoryPage({super.key});

  @override
  Widget buildContent(BuildContext context, PlaylistCategoryEntity data,
      PlaylistCategoryViewModel viewModel) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(

          spacing: 8,
          runSpacing: 8,
          children: (data.sub ?? [])
              .map((e) => ActionChip(
                    label: Text(e.name ?? ''),
                    onPressed: () {
                      Navigator.of(context).pop(e.name);
                    },
                  ))
              .toList(),
        ),
      ),
    );
  }

  @override
  PlaylistCategoryViewModel buildViewModel(BuildContext context) {
    return PlaylistCategoryViewModel();
  }

  @override
  String getTitle() {
    return "歌单分类";
  }
}
