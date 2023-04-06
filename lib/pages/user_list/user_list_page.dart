import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:music/entity/user_list_request.dart';
import 'package:music/entity/user_list_type.dart';
import 'package:music/pages/user_list/user_list_view_model.dart';
import 'package:provider/provider.dart';

import '../../api/data_store.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final request =
        ModalRoute.of(context)?.settings.arguments as UserListRequest;

    return ChangeNotifierProvider(
      create: (_) => UserListViewModel(request.id, request.userListType),
      child: Consumer<UserListViewModel>(
        builder: (_, viewModel, __) {
          return Scaffold(
            appBar: AppBar(
              title: Text(request.title),
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
                  children: viewModel.list
                      .map((e) => ListTile(
                            onTap: () {
                              Navigator.of(context).pushNamed('/user/list',
                                  arguments: UserListRequest(
                                      e.id, UserListType.followeds, 'TA的粉丝'));
                            },
                            leading: CircleAvatar(
                              backgroundImage:
                                  CachedNetworkImageProvider(e.avatar),
                            ),
                            title: Text(
                              e.name,
                              maxLines: 1,
                            ),
                            trailing: DataStore.instance.getUserId() == e.id
                                ? null
                                : TextButton(
                                    onPressed: () {
                                      viewModel.followUser(e);
                                    },
                                    child: Text(e.followed ? '已关注' : "关注")),
                            subtitle: e.signature.isEmpty
                                ? null
                                : Text(
                                    e.signature,
                                    maxLines: 1,
                                  ),
                          ))
                      .toList(),
                )),
          );
        },
      ),
    );
  }
}
