import 'package:music/api/http_service.dart';
import 'package:music/pages/common/base_content_view_model.dart';

import '../../entity/artist_songs_entity.dart';

class ArtistSongsViewModel
    extends BaseContentViewModel<List<ArtistSongsHotSongs>> {
  final int id;

  ArtistSongsViewModel(this.id) {
    loadContent();
  }

  @override
  Future<List<ArtistSongsHotSongs>?> getContent() async {
    final entity = await HttpService.instance.getArtistSongs(id);
    return entity?.hotSongs;
  }
}
