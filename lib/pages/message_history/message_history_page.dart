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
                    ? _buildUserMessage(context, e)
                    : _buildFriendsMessage(context, e))
                .toList(),
          );

          final column = Column(
            children: [
              Expanded(child: listView),
              Card(
                  margin: const EdgeInsets.all(16),
                  child: TextFormField(
                    controller: viewModel.controller,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: '回复',
                        hintText: '请输入回复的内容',
                        suffixIcon: IconButton(
                            onPressed: viewModel.controller.text.isEmpty
                                ? null
                                : viewModel.reply,
                            icon: const Icon(Icons.send))),
                  ))
            ],
          );

          return Scaffold(
              appBar: AppBar(
                title: const Text('历史记录'),
              ),
              body:
                  // viewModel.list.isEmpty
                  //     ? const Center(
                  //         child: CircularProgressIndicator(),
                  //       )
                  //     :
                  viewModel.canRefresh
                      ? RefreshIndicator(
                          child: column,
                          onRefresh: () async {
                            await viewModel.refresh();
                          })
                      : column);
        },
      ),
    );
  }

  Widget _buildUserMessage(BuildContext context, PrivateHistoryMsgs message) {
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
              alignment: Alignment.centerRight,
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
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

  Widget _buildFriendsMessage(
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
    final columnChildren = <Widget>[];

    final jsonObject = json.decode(message);
    final msg = jsonObject['msg'];
    if (msg.toString().isNotEmpty) {
      columnChildren.add(Text(
        msg.toString(),
        style: const TextStyle(color: Colors.white),
      ));
    }

    final picInfo = jsonObject["picInfo"];
    if (picInfo != null) {
      columnChildren.add(CachedNetworkImage(imageUrl: picInfo['picUrl']));
    }
    final song = jsonObject['song'];
    if (song != null) {
      columnChildren.add(Row(
        children: [
          CachedNetworkImage(
            imageUrl: song['album']['picUrl'],
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 4,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  song['name'],
                  style: const TextStyle(color: Colors.white),
                  maxLines: 1,
                ),
                Text(
                  song['artists'][0]['name'],
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                  maxLines: 1,
                ),
              ],
            ),
          )
        ],
      ));
    }

    final playlist = jsonObject['playlist'];
    if (playlist != null) {
      columnChildren.add(Row(
        children: [
          CachedNetworkImage(
            imageUrl: playlist['coverImgUrl'],
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 4,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  playlist['name'],
                  style: const TextStyle(color: Colors.white),
                  maxLines: 1,
                ),
                Text(
                  playlist['creator']['nickname'],
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                  maxLines: 1,
                ),
              ],
            ),
          )
        ],
      ));
    }

    final album = jsonObject['album'];
    if (album != null) {
      columnChildren.add(Row(
        children: [
          CachedNetworkImage(
            imageUrl: album['picUrl'],
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 4,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  album['name'],
                  style: const TextStyle(color: Colors.white),
                  maxLines: 1,
                ),
                Text(
                  album['artist']['name'],
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                  maxLines: 1,
                ),
              ],
            ),
          )
        ],
      ));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: columnChildren,
    );
  }
}
