import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:music/entity/comment.dart';
import 'package:music/entity/comments_request.dart';
import 'package:music/pages/comments/comments_view_model.dart';
import 'package:provider/provider.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final request =
        ModalRoute.of(context)?.settings.arguments as CommentsRequest;

    return ChangeNotifierProvider(
      create: (_) => CommentsViewModel(request),
      child: Consumer<CommentsViewModel>(
        builder: (_, viewModel, __) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('评论'),
            ),
            body: EasyRefresh(
                controller: viewModel.easyRefreshController,
                header: const MaterialHeader(),
                onLoad: () async {
                  await viewModel.loadMore();
                },
                onRefresh: () async {
                  await viewModel.refresh();
                },
                child: ListView(
                  children: viewModel.list.map((e) => CommentItem(e)).toList(),
                )),
          );
        },
      ),
    );
  }
}

class CommentItem extends StatelessWidget {
  final Comment comment;

  const CommentItem(this.comment, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(comment.userAvatar),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      comment.username,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(comment.content),

                    Row(
                      children: [
                        Text(
                          '${comment.timeStr} ${comment.ipLocation}',
                          style:
                              const TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.thumb_up_alt_outlined,
                                  color: comment.liked
                                      ? Colors.redAccent
                                      : Colors.grey,
                                ),
                                if (comment.likedCount > 0)
                                  Text(
                                    comment.likedCount.toString(),
                                    style: const TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          color: Colors.grey[500],
          width: double.infinity,
          height: 0.1,
          margin: const EdgeInsets.symmetric(horizontal: 16),
        )
      ],
    );
  }
}
