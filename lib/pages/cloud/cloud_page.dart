import 'package:easy_refresh/easy_refresh.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:music/pages/cloud/cloud_view_model.dart';
import 'package:music/widget/song_list_tile.dart';
import 'package:provider/provider.dart';

class CloudPage extends StatelessWidget {
  const CloudPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CloudViewModel(),
      child: Consumer<CloudViewModel>(
        builder: (_, viewModel, __) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('我的云盘'),
              actions: [
                IconButton(
                    onPressed: () async {
                      final result = await FilePicker.platform
                          .pickFiles(type: FileType.audio);

                      if(result != null){
                        viewModel.upload(result.paths[0]!);
                      }
                    },
                    icon: const Icon(Icons.cloud_upload))
              ],
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
                    .map((e) => SongListTile(
                          e,
                          null,
                          dialogActionsBuilder: (_) {
                            return ListTile(
                              title: const Text('删除'),
                              leading: const Icon(Icons.delete),
                              onTap: () {
                                Navigator.of(context).pop();
                                viewModel.delete(e);
                              },
                            );
                          },
                        ))
                    .toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
