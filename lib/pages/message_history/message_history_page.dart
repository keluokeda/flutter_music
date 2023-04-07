import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/api/data_store.dart';
import 'package:provider/provider.dart';

import '../../entity/private_history_entity.dart';
import 'message_history_view_model.dart';

class MessageHistoryPage extends StatelessWidget {
  const MessageHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uid = ModalRoute.of(context)?.settings.arguments as int;

    return ChangeNotifierProvider(
      create: (_) => MessageHistoryViewModel(uid),
      child: Consumer<MessageHistoryViewModel>(
        builder: (_, viewModel, __) {
          final listView = ListView(
            reverse: true,
            children: viewModel.list
                .map((e) => DataStore.instance.getUserId() == e.fromUser?.userId
                    ? _buildCurrentUserMessage(context, e)
                    : _buildOtherUserMessage(context, e))
                .toList(),
          );

          return Scaffold(
              appBar: AppBar(
                title: const Text('历史记录'),
              ),
              body: viewModel.list.isEmpty
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : viewModel.canRefresh
                      ? RefreshIndicator(
                          child: listView,
                          onRefresh: () async {
                            await viewModel.refresh();
                          })
                      : listView);
        },
      ),
    );
  }

  Widget _buildOtherUserMessage(
      BuildContext context, PrivateHistoryMsgs message) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            width: 40,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(4)),
                  child: _buildMessageContent(message.msg ?? ''),
                ),
              ],
            ),
          ),
          CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(
                  message.fromUser?.avatarUrl ?? '')),
        ],
      ),
    );
  }

  Widget _buildCurrentUserMessage(
      BuildContext context, PrivateHistoryMsgs message) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(
                  message.fromUser?.avatarUrl ?? '')),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(4)),
                  child: _buildMessageContent(message.msg ?? ''),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 40,
          )
        ],
      ),
    );
  }

  Widget _buildMessageContent(String message) {
    final jsonObject = json.decode(message);
    final msg = jsonObject['msg'];
    if (msg.toString().isNotEmpty) {
      return Text(
        msg.toString(),
        style: const TextStyle(color: Colors.white),
      );
    }

    final picInfo = jsonObject["picInfo"];
    if (picInfo != null) {
      return CachedNetworkImage(imageUrl: picInfo['picUrl']);
    }

    return Text(message);
  }
}
