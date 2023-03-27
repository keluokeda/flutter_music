import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/entity/playlist_info_edit_view_data.dart';
import 'package:music/pages/common/base_content_page.dart';
import 'package:music/pages/playlist_info_edit/playlist_info_edit_view_model.dart';

class PlaylistInfoEditPage extends BaseContentPage<PlaylistInfoEditViewModel,
    PlaylistInfoEditViewData> {
  const PlaylistInfoEditPage({Key? key}) : super(key: key);

  @override
  Widget buildContent(BuildContext context, PlaylistInfoEditViewData data,
      PlaylistInfoEditViewModel viewModel) {
    return ListView(
      children: [
        InkWell(
          onTap: viewModel.loading ? null : () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(children: [
              const Text(
                '更换封面',
                style: TextStyle(fontSize: 16),
              ),
              const Spacer(),
              CachedNetworkImage(
                imageUrl: viewModel.coverImage,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              const Icon(Icons.keyboard_arrow_right)
            ]),
          ),
        ),
        ListTile(
          title: TextFormField(
            enabled: !viewModel.loading,
            controller: viewModel.nameController,
            decoration: const InputDecoration(
                labelText: '歌单标题', border: OutlineInputBorder()),
          ),
        ),
        ListTile(
          title: TextFormField(
            enabled: !viewModel.loading,
            controller: viewModel.introduceController,
            maxLength: 1000,
            maxLines: 3,
            decoration: const InputDecoration(
                labelText: '歌单介绍', border: OutlineInputBorder()),
          ),
        ),
        Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            Text(
              '标签',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            spacing: 4,
            children: viewModel.optional!.data!.tags
                .map((e) => FilterChip(
                    label: Text(e.name ?? ''),
                    selected: e.checked,
                    onSelected: viewModel.loading
                        ? null
                        : (value) {
                            viewModel.updateChip(e, value);
                          }))
                .toList(),
          ),
        ),
        if (viewModel.loading)
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(16),
            child: const CircularProgressIndicator(),
          )
      ],
    );
  }

  @override
  PlaylistInfoEditViewModel buildViewModel(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments as int;

    return PlaylistInfoEditViewModel(id);
  }

  @override
  AppBar buildAppBar(
      BuildContext context, PlaylistInfoEditViewModel viewModel) {
    if (viewModel.optional?.data == null) {
      return super.buildAppBar(context, viewModel);
    }
    return AppBar(
      title: Text(getTitle()),
      actions: [
        IconButton(
            onPressed: viewModel.loading
                ? null
                : () async {
                    final ns = Navigator.of(context);
                    final result = await viewModel.update();
                    if (result) {
                      ns.pop();
                    }
                  },
            icon: const Icon(Icons.done))
      ],
    );
  }

  @override
  String getTitle() {
    return "编辑歌单信息";
  }
}
