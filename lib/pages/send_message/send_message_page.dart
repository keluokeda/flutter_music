import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/entity/user_item.dart';
import 'package:music/pages/common/base_content_page.dart';
import 'package:music/pages/send_message/send_message_view_model.dart';

class SendMessagePage
    extends BaseContentPage<SendMessageViewModel, List<UserItem>> {
  const SendMessagePage({super.key});

  @override
  Widget buildContent(BuildContext context, List<UserItem> data,
      SendMessageViewModel viewModel) {
    return Column(
      children: [
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
              .toList(),
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
                          onPressed: viewModel.controller.text.isNotEmpty &&
                                  data.map((e) => e.checked).isNotEmpty
                              ? viewModel.commit
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
  SendMessageViewModel buildViewModel(BuildContext context) {
    return SendMessageViewModel();
  }

  @override
  String getTitle() {
    return "发新私信";
  }
}
