import 'package:music/api/http_service.dart';
import 'package:music/pages/common/base_content_view_model.dart';

import '../../entity/artist_mv_entity.dart';

class ArtistMVViewModel extends BaseContentViewModel<List<ArtistMvMvs>> {
  final int id;

  ArtistMVViewModel(this.id) {
    loadContent();
  }

  @override
  Future<List<ArtistMvMvs>?> getContent() async {
    final entity = await HttpService.instance.getArtistMv(id);
    return entity?.mvs;
  }
}
