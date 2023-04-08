import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:music/pages/mv_square/mv_square_view_model.dart';
import 'package:music/widget/mv_item_view.dart';
import 'package:provider/provider.dart';

class MVSquarePage extends StatelessWidget {
  const MVSquarePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MVSquareViewModel(),
      child: Consumer<MVSquareViewModel>(
        builder: (_, viewModel, __) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('全部MV'),
              actions: [
                PopupMenuButton<String>(
                  itemBuilder: (_) => ['全部', '内地', '港台', '欧美', '日本', '韩国']
                      .map((e) => CheckedPopupMenuItem<String>(
                            value: e,
                            checked: viewModel.area == e,
                            child: Text(e),
                          ))
                      .toList(),
                  onSelected: (value) {
                    viewModel.updateArea(value);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('地区'),
                  ),
                ),
                PopupMenuButton<String>(
                  itemBuilder: (_) => ['全部', '官方版', '原生', '现场版', '网易出品']
                      .map((e) => CheckedPopupMenuItem<String>(
                            value: e,
                            checked: viewModel.type == e,
                            child: Text(e),
                          ))
                      .toList(),
                  onSelected: (value) {
                    viewModel.updateType(value);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('类型'),
                  ),
                )
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
                child: GridView.count(
                  padding: const EdgeInsets.all(8),
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 20 / 16,
                  children: viewModel.list.map((e) => MVItemView(e)).toList(),
                )),
          );
        },
      ),
    );
  }
}
