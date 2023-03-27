import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'base_content_view_model.dart';

abstract class BaseContentPage<VM extends BaseContentViewModel<T>, T>
    extends StatelessWidget {
  const BaseContentPage({Key? key}) : super(key: key);

  @protected
  Widget buildBodyInner(BuildContext context, VM viewModel) {
    if (viewModel.optional == null) {
      return Center(
        child: OutlinedButton(
            onPressed: viewModel.loadContent, child: const Text('出错了，点我重试')),
      );
    }
    if (viewModel.optional?.data == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    var detail = viewModel.optional!.data as T;

    return buildContent(context, detail, viewModel);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => buildViewModel(context),
      child: Consumer<VM>(
        builder: (_, viewModel, __) {
          return buildScaffold(context, viewModel);
        },
      ),
    );
  }

  @protected
  Widget buildScaffold(BuildContext context,VM viewModel) {
    return Scaffold(
      appBar: buildAppBar(context, viewModel),
      body: buildBodyInner(context, viewModel),
    );
  }

  @protected
  AppBar buildAppBar(BuildContext context, VM viewModel) {
    return AppBar(
      title: Text(getTitle()),
    );
  }

  ///获取当前页面的标题
  String getTitle();

  ///创建 view model
  VM buildViewModel(BuildContext context);

  ///创建内容widget
  Widget buildContent(BuildContext context, T data, VM viewModel);
}
