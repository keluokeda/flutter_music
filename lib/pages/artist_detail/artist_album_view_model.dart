import 'package:music/api/http_service.dart';
import 'package:music/pages/common/base_content_view_model.dart';

import '../../entity/artist_album_entity.dart';

class ArtistAlbumViewModel
    extends BaseContentViewModel<List<ArtistAlbumHotAlbums>> {
  final int id;

  ArtistAlbumViewModel(this.id) {
    loadContent();
  }

  @override
  Future<List<ArtistAlbumHotAlbums>?> getContent() async {
    final entity = await HttpService.instance.getArtistAlbum(id);
    return entity?.hotAlbums;
  }
}
