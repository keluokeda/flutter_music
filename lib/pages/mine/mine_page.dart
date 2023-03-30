import 'package:blur/blur.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music/api/data_store.dart';
import 'package:music/entity/user_list_request.dart';
import 'package:music/entity/user_list_type.dart';
import 'package:music/pages/mine/mine_view_model.dart';
import 'package:provider/provider.dart';

class MinePage extends StatelessWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MineViewModel(),
      child: Consumer<MineViewModel>(
        builder: (_, viewModel, __) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('我的'),
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
              ],
            ),
            body: RefreshIndicator(
              onRefresh: () async {
                await viewModel.load();
              },
              child: ListView(
                children: [
                  Card(
                    margin: const EdgeInsets.all(16),
                    child: Stack(
                      children: [
                        CachedNetworkImage(
                          imageUrl: viewModel
                                  .userDetailEntity?.profile?.backgroundUrl ??
                              '',
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ).blurred(blurColor: Theme.of(context).primaryColor),
                        Container(
                          height: 200,
                          padding: const EdgeInsets.all(16),
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 16,
                              ),
                              CircleAvatar(
                                backgroundImage: CachedNetworkImageProvider(
                                    viewModel.userDetailEntity?.profile
                                            ?.avatarUrl ??
                                        ''),
                                radius: 32,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                viewModel.userDetailEntity?.profile?.nickname ??
                                    '',
                                style: const TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Lv.${viewModel.userDetailEntity?.level}',
                                style: const TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushNamed('/user/list',
                          arguments: UserListRequest(
                              DataStore.instance.getUserId() ?? 0,
                              UserListType.follows,
                              '我的关注'));
                    },
                    leading: const Icon(
                      Icons.group,
                      color: Colors.pink,
                    ),
                    title: const Text('我的关注'),
                    trailing: Text(
                        (viewModel.userDetailEntity?.profile?.follows ?? 0)
                            .toString()),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushNamed('/user/list',
                          arguments: UserListRequest(
                              DataStore.instance.getUserId() ?? 0,
                              UserListType.followeds,
                              '我的粉丝'));
                    },
                    leading: const Icon(
                      Icons.people_alt_outlined,
                      color: Colors.redAccent,
                    ),
                    title: const Text('我的粉丝'),
                    trailing: Text(
                        (viewModel.userDetailEntity?.profile?.followeds ?? 0)
                            .toString()),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.download,
                      color: Colors.blueGrey,
                    ),
                    title: const Text('我的下载'),
                    onTap: () {
                      Navigator.of(context).pushNamed('/download/management');
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.cloud,
                      color: Colors.orange,
                    ),
                    title: const Text('我的云盘'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.history,
                      color: Colors.lightBlue,
                    ),
                    title: const Text('最近播放'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
