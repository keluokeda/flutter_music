import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/entity/share_resource_type.dart';
import 'package:music/entity/user_item.dart';
import 'package:music/pages/common/base_content_page.dart';
import 'package:music/pages/share_resource/share_resource_view_model.dart';
import 'package:oktoast/oktoast.dart';

class ShareResourcePage
    extends BaseContentPage<ShareResourceViewModel, List<UserItem>> {
  const ShareResourcePage({super.key});

  @override
  Widget buildContent(BuildContext context, List<UserItem> data,
      ShareResourceViewModel viewModel) {
    return Column(
      children: [
        ListTile(
          leading: CachedNetworkImage(
              imageUrl: viewModel.shareResourceRequest.imageUrl),
          title: Text(viewModel.shareResourceRequest.title),
          subtitle: Text(viewModel.shareResourceRequest.subTitle),
        ),
        Expanded(
            child: ListView(
          children: data
              .map((e) => ListTile(
                    title: Text(e.name),
                    leading: CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider(e.avatar),
                    ),
                    trailing: Checkbox(
                        value: e.checked,
                        onChanged: (_) {
                          viewModel.toggleChecked(e);
                        }),
                  ))
              .toList()
            ..insert(
                0,
                const ListTile(
                  title: Text('分享给好友'),
                )),
        )),
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              children: [
                Expanded(
                    child: TextFormField(
                  controller: viewModel.controller,
                  decoration: InputDecoration(
                      labelText: "内容",
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                          onPressed: data
                                  .map((e) => e.checked)
                                  .where((element) => element)
                                  .isNotEmpty
                              ? () async {
                                  final ns = Navigator.of(context);
                                  await viewModel.share();
                                  showToast('分享成功');
                                  ns.pop();
                                }
                              : null,
                          icon: const Icon(Icons.send))),
                )),
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  ShareResourceViewModel buildViewModel(BuildContext context) {
    final request =
        ModalRoute.of(context)?.settings.arguments as ShareResourceRequest;
    return ShareResourceViewModel(request);
  }

  @override
  String getTitle() {
    return '分享';
  }
}
