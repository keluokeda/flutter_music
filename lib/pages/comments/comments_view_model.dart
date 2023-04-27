import 'package:music/api/http_service.dart';
import 'package:music/entity/comment.dart';
import 'package:music/entity/comments_request.dart';
import 'package:music/entity/comments_type.dart';
import 'package:music/pages/common/base_refresh_and_load_more_view_model.dart';

import '../../entity/load_list_result.dart';

class CommentsViewModel extends BaseRefreshAndLoadMoreViewModel<Comment> {
  final CommentsRequest request;

  CommentsViewModel(this.request);

  @override
  Future<LoadListResult<Comment>> getList(int index) async {
    if (request.commentsType == CommentsType.song) {
      final entity =
          await HttpService.instance.getMusicComments(request.id, index);

      return LoadListResult(
          entity?.comments?.map((e) => e.convert()).toList() ?? [],
          entity?.more ?? false);
    }

    return const LoadListResult([], false);
  }
}
