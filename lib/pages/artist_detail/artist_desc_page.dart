import 'package:flutter/material.dart';
import 'package:music/entity/artist_desc_entity.dart';
import 'package:provider/provider.dart';

import 'artist_desc_view_model.dart';

class ArtistDescPage extends StatefulWidget {
  final int id;

  const ArtistDescPage(this.id, {Key? key}) : super(key: key);

  @override
  State<ArtistDescPage> createState() => _ArtistDescPageState();
}

class _ArtistDescPageState extends State<ArtistDescPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ChangeNotifierProvider(
      create: (_) => ArtistDescViewModel(widget.id),
      child: Consumer<ArtistDescViewModel>(
        builder: (_, viewModel, __) {
          final data = viewModel.optional?.data;
          if (data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(
            children: data.map((e) => _buildDesc(context, e)).toList(),
          );
        },
      ),
    );
  }

  Widget _buildDesc(BuildContext context, ArtistDescIntroduction desc) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            desc.ti ?? '',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(desc.txt ?? ''),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
