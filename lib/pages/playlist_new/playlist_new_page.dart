import 'package:flutter/material.dart';
import 'package:music/pages/playlist_new/playlist_new_view_model.dart';
import 'package:provider/provider.dart';

class PlaylistNewPage extends StatelessWidget {
  const PlaylistNewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PlaylistNewViewModel(),
      child: Consumer<PlaylistNewViewModel>(
        builder: (_, viewModel, __) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('新建歌单'),
              actions: [
                IconButton(
                    onPressed: () async {
                      final ns = Navigator.of(context);
                      final result = await viewModel.create();
                      if (result) {
                        ns.pop(true);
                      }
                    },
                    icon: const Icon(Icons.done))
              ],
            ),
            body: Column(
              children: [
                ListTile(
                  title: TextFormField(
                    controller: viewModel.textEditingController,
                    decoration: const InputDecoration(
                        hintText: '请输入新建歌单标题', border: OutlineInputBorder()),
                  ),
                ),
                SwitchListTile(
                    value: viewModel.checked,
                    title: const Text('设置为隐私歌单'),
                    onChanged: (checked) {
                      viewModel.setChecked(checked);
                    })
              ],
            ),
          );
        },
      ),
    );
  }
}
