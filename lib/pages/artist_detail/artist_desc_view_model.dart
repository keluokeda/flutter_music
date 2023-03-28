import 'package:music/api/http_service.dart';
import 'package:music/pages/common/base_content_view_model.dart';

import '../../entity/artist_desc_entity.dart';

class ArtistDescViewModel
    extends BaseContentViewModel<List<ArtistDescIntroduction>> {
  final int id;

  ArtistDescViewModel(this.id) {
    loadContent();
  }

  @override
  Future<List<ArtistDescIntroduction>?> getContent() async {
    final entity = await HttpService.instance.getArtistDesc(id);
    return entity?.introduction;
  }
}
