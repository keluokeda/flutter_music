import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_download_manager/flutter_download_manager.dart';
import 'package:music/api/data_store.dart';
import 'package:music/api/http_service.dart';
import 'package:music/event/local_file_deleted_event.dart';
import 'package:music/event/local_file_downloaded_event.dart';
import 'package:music/main.dart';
import 'package:music/pages/common/download_view_model.dart';
import 'package:music/widget/song_list_header_tile.dart';
import 'package:music/widget/song_list_tile.dart';
import 'package:provider/provider.dart';

import '../../entity/song_item.dart';

class DownloadManagementPage extends StatelessWidget {
  const DownloadManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('下载管理'),
            bottom: const TabBar(tabs: [
              Tab(text: '下载中'),
              // Tab(text: '已失败'),
              Tab(text: '已完成'),
            ]),
          ),
          body: const TabBarView(
            children: [
              DownloadingPage(),
              // DownloadFailedPage(),
              DownloadedPage(),
            ],
          ),
        ));
  }
}

class DownloadingPage extends StatefulWidget {
  const DownloadingPage({Key? key}) : super(key: key);

  @override
  State<DownloadingPage> createState() => _DownloadingPageState();
}

class _DownloadingPageState extends State<DownloadingPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Consumer<DownloadViewModel>(builder: (_, viewModel, __) {
      return ListView(
        children: viewModel.downloadingSongs
            .map((e) => ListTile(
                  title: Text(e.songItem.name),
                  subtitle: Text(
                    e.songItem.subTitle(),
                    maxLines: 1,
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          color: Colors.pinkAccent,
                          strokeWidth: 2,
                        ),
                      ),
                      if (e.downloadStatus != DownloadStatus.downloading)
                        //不能删除正在下载的任务
                        IconButton(
                            onPressed: () {
                              viewModel.deleteDownloadTask(e);
                            },
                            icon: const Icon(Icons.clear))
                    ],
                  ),
                ))
            .toList(),
      );
    });
  }

  @override
  bool get wantKeepAlive => true;
}

class DownloadFailedPage extends StatefulWidget {
  const DownloadFailedPage({Key? key}) : super(key: key);

  @override
  State<DownloadFailedPage> createState() => _DownloadFailedPageState();
}

class _DownloadFailedPageState extends State<DownloadFailedPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Consumer<DownloadViewModel>(
      builder: (_, viewModel, __) {
        return ListView(
          children: viewModel.failedSongs
              .map((e) => ListTile(
                    title: Text(e.songItem.name),
                  ))
              .toList(),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class DownloadedPage extends StatefulWidget {
  const DownloadedPage({Key? key}) : super(key: key);

  @override
  State<DownloadedPage> createState() => _DownloadedPageState();
}

class _DownloadedPageState extends State<DownloadedPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ChangeNotifierProvider(
      create: (_) => DownloadedViewModel(),
      child: Consumer<DownloadedViewModel>(
        builder: (_, viewModel, __) {
          return ListView(children: [
            SongListHeaderTile(
              songs: viewModel.list,
              isUser: false,
              playlistId: null,
              isLocalFile: true,
            ),
            ...viewModel.list
                .map((e) => SongListTile(
                      e,
                      null,
                      dialogActionsBuilder: (_) {
                        return ListTile(
                          title: const Text('删除本地文件'),
                          leading: const Icon(Icons.delete),
                          onTap: () {
                            viewModel.deleteFile(e);
                            Navigator.of(context).pop();
                          },
                        );
                      },
                    ))
                .toList(),
          ]);
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class DownloadedViewModel extends ChangeNotifier {
  List<SongItem> _list = [];

  late StreamSubscription<LocalFileDeletedEvent> subscription;
  late StreamSubscription<LocalFileDownloadedEvent> subscription1;

  List<SongItem> get list => _list;

  void init() async {
    final downloadDir = Directory(DataStore.instance.downloadPath);
    final children = await downloadDir.list().toList();



    final idList = <int>[];

    for (var element in children) {
      if (element.path.endsWith('.mp3')) {
        final index = element.path.lastIndexOf('/');
        final songIdString =
            element.path.substring(index + 1).replaceAll('.mp3', '');
        idList.add(int.parse(songIdString));
      }
    }

    if (idList.isEmpty) {
      return;
    }

    final entity = await HttpService.instance.getSongsDetail(idList);

    final songList = entity?.songs ?? [];
    _list = songList.map((e) => e.toSongItem()).toList();
    notifyListeners();
  }

  DownloadedViewModel() {
    init();

    subscription = eventBus.on<LocalFileDeletedEvent>().listen((event) {
      _list.removeWhere((element) => event.list.contains(element));
      notifyListeners();
    });

    subscription1 = eventBus.on<LocalFileDownloadedEvent>().listen((event) {
      _list.insert(0, event.songItem);
      notifyListeners();
    });
  }

  @override
  void dispose() {
    super.dispose();
    subscription.cancel();
    subscription1.cancel();
  }

  void deleteFile(SongItem songItem) async {
    if (_list.remove(songItem)) {
      //先从列表中移除
      final file = File(songItem.getFilePath());
      final result = await file.delete();
      if (kDebugMode) {
        print('删除文件结果 $result');
      }

      notifyListeners();
    }
  }
}
