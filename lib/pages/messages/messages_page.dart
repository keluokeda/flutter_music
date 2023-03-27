import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/pages/messages/messages_view_model.dart';
import 'package:provider/provider.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MessagesViewModel(),
      child: Consumer<MessagesViewModel>(
        builder: (_, viewModel, __) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('消息'),
              actions: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.alternate_email)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.comment_outlined)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.notifications_none)),
              ],
            ),
            body: _buildBody(context, viewModel),
          );
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context, MessagesViewModel viewModel) {
    final list = viewModel.list;
    if (list == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        await viewModel.loadMessageList();
      },
      child: ListView(
        children: list
            .map((e) => Column(
                  children: [
                    ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        backgroundImage: CachedNetworkImageProvider(
                            e.fromUser?.avatarUrl ?? ''),
                      ),
                      title: Text(e.fromUser?.nickname ?? ''),
                      subtitle: Text(
                        json.decode(e.lastMsg ?? '')['msg'],
                        maxLines: 1,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      trailing: Text(
                        e.formatDate(),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    const Divider(
                      indent: 16,
                      height: 0.3,
                      thickness: 0.3,
                      endIndent: 16,
                    ),
                  ],
                ))
            .toList(),
      ),
    );
  }
}
