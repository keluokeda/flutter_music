import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:music/entity/album_detail_entity.dart';
import 'package:music/entity/album_dynamic_entity.dart';
import 'package:music/entity/album_view_data.dart';
import 'package:music/entity/all_mv_entity.dart';
import 'package:music/entity/artist_album_entity.dart';
import 'package:music/entity/artist_desc_entity.dart';
import 'package:music/entity/artist_list_entity.dart';
import 'package:music/entity/artist_mv_entity.dart';
import 'package:music/entity/artist_songs_entity.dart';
import 'package:music/entity/cloud_song_entity.dart';
import 'package:music/entity/login_status_entity.dart';
import 'package:music/entity/message_list_entity.dart';
import 'package:music/entity/mv_detail_entity.dart';
import 'package:music/entity/mv_detail_info_entity.dart';
import 'package:music/entity/newest_album_entity.dart';
import 'package:music/entity/personalized_mv_entity.dart';
import 'package:music/entity/playlist_detail_dynamic_entity.dart';
import 'package:music/entity/playlist_detail_entity.dart';
import 'package:music/entity/playlist_subscribers_entity.dart';
import 'package:music/entity/playlist_tags_entity.dart';
import 'package:music/entity/playlist_tracks_entity.dart';
import 'package:music/entity/private_history_entity.dart';
import 'package:music/entity/recommend_playlist_entity.dart';
import 'package:music/entity/recommend_songs_entity.dart';
import 'package:music/entity/simi_mv_entity.dart';
import 'package:music/entity/song_detail_entity.dart';
import 'package:music/entity/song_download_url_entity.dart';
import 'package:music/entity/song_url_entity.dart';
import 'package:music/entity/top_artists_entity.dart';
import 'package:music/entity/user_detail_entity.dart';
import 'package:music/entity/user_followeds_entity.dart';
import 'package:music/entity/user_follows_entity.dart';
import 'package:music/entity/user_playlist_entity.dart';
import 'package:oktoast/oktoast.dart';
import 'package:path_provider/path_provider.dart';

import '../entity/playlist_category_entity.dart';
import '../entity/playlist_list_entity.dart';

class HttpService {
  final Dio _dio = Dio();

  static final HttpService instance = HttpService._privateConstructor();

  HttpService._privateConstructor();

  ///创建二维码的key
  Future<String?> createKey() async {
    try {
      const path = 'login/qr/key';
      final response = await _dio.get(path);
      return response.data['data']['unikey'];
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///创建二维码的url
  Future<String?> createLoginUrl(String key) async {
    try {
      const path = 'login/qr/create';
      final response = await _dio.get(path, queryParameters: {'key': key});
      return response.data['data']['qrurl'];
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///检查用户是否扫码
  Future<bool> checkLoginResult(String key) async {
    try {
      const path = 'login/qr/check';
      final response = await _dio.get(path, queryParameters: {'key': key});
      final data = response.data;
      final success = data['code'] == 803;
      if (success) {
        return true;
      }
      showToast(data['message']);
      return false;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  ///退出登录
  Future<bool> logout() async {
    try {
      const path = 'logout';
      final response = await _dio.get(path);
      return response.data['code'] == 200;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  ///检查是否登录
  Future<LoginStatusEntity?> getLoginStatus() async {
    try {
      const path = 'login/status';
      final response = await _dio.get(path);
      return LoginStatusEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取消息列表
  Future<MessageListEntity?> getMessageList() async {
    try {
      const path = 'msg/private';
      final response = await _dio.get(path, queryParameters: {'limit': 1000});
      return MessageListEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取每日推荐歌曲
  Future<RecommendSongsEntity?> getRecommendSongs() async {
    try {
      const path = 'recommend/songs';
      final response = await _dio.get(path);
      return RecommendSongsEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取每日推荐歌曲
  Future<SongDetailEntity?> getSongsDetail(List<int> idList) async {
    if (idList.isEmpty) {
      return null;
    }

    try {
      const path = 'song/detail';
      final response = await _dio.get(path,
          queryParameters: {'ids': idList.map((e) => e.toString()).join(',')});
      return SongDetailEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取歌单详情
  Future<PlaylistDetailEntity?> getPlaylistDetail(int id) async {
    try {
      const path = 'playlist/detail';
      final response = await _dio.get(path, queryParameters: {'id': id});
      return PlaylistDetailEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取每日推荐歌单
  Future<RecommendPlaylistEntity?> getRecommendPlaylist() async {
    try {
      const path = 'recommend/resource';
      final response = await _dio.get(path);
      return RecommendPlaylistEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取最新专辑
  Future<NewestAlbumEntity?> getNewestAlbum() async {
    try {
      const path = 'album/newest';
      final response = await _dio.get(path, queryParameters: {'limit': 10});
      return NewestAlbumEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///全部新碟
  Future<NewestAlbumEntity?> getAlbumList(int index, String area) async {
    try {
      const path = 'album/new';
      final response = await _dio.get(path, queryParameters: {
        'limit': 30,
        'offset': (index - 1) * 30,
        'area': area
      });
      return NewestAlbumEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取用户粉丝
  Future<UserFollowedsEntity?> getUserFolloweds(int uid, int index) async {
    try {
      const path = 'user/followeds';
      final response = await _dio.get(path, queryParameters: {
        'limit': 30,
        'offset': (index - 1) * 30,
        'uid': uid
      });
      return UserFollowedsEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取用户关注的人
  Future<UserFollowsEntity?> getUserFollows(int uid, int index,
      {int limit = 30}) async {
    try {
      const path = 'user/follows';
      final response = await _dio.get(path, queryParameters: {
        'limit': limit,
        'offset': (index - 1) * limit,
        'uid': uid
      });
      return UserFollowsEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取用户详情
  Future<UserDetailEntity?> getUserDetail(int id) async {
    try {
      const path = 'user/detail';
      final response = await _dio.get(path, queryParameters: {'uid': id});
      return UserDetailEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///发送私信
  Future<bool> sendPrivateMessage(List<int> userIdList, String content) async {
    try {
      const path = 'send/text';
      await _dio.get(path,
          queryParameters: {'msg': content, 'user_ids': userIdList.join(',')});
      return true;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  ///获取歌单歌曲 分页
  Future<PlaylistTracksEntity?> getPlaylistSongs(int id) async {
    try {
      const path = 'playlist/track/all';
      final response = await _dio.get(path, queryParameters: {
        'id': id,
      });
      return PlaylistTracksEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取和某个用户的私信内容
  Future<PrivateHistoryEntity?> getPrivateMessageHistory(int uid) async {
    try {
      const path = 'msg/private/history';
      final response = await _dio.get(path, queryParameters: {
        'uid': uid,
        'limit': 1000,
      });
      return PrivateHistoryEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取相似MV
  Future<SimiMvEntity?> getSimiMvList(int id) async {
    try {
      const path = 'simi/mv';
      final response = await _dio.get(path, queryParameters: {
        'mvid': id,
      });
      return SimiMvEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取mv详情
  Future<MvDetailEntity?> getMVDetail(int id) async {
    try {
      const path = 'mv/detail';
      final response = await _dio.get(path, queryParameters: {
        'mvid': id,
      });
      return MvDetailEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取mv详情
  Future<MvDetailInfoEntity?> getMVDetailInfo(int id) async {
    try {
      const path = 'mv/detail/info';
      final response = await _dio.get(path, queryParameters: {
        'mvid': id,
      });
      return MvDetailInfoEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取歌手列表
  Future<ArtistListEntity?> getArtistList(int index,
      {int limit = 50, int type = -1, int area = -1}) async {
    try {
      const path = 'artist/list';
      final response = await _dio.get(path, queryParameters: {
        'limit': limit,
        'offset': (index - 1) * limit,
        'type': type,
        'area': area
      });
      return ArtistListEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取推荐的mv
  Future<PersonalizedMvEntity?> getRecommendMV() async {
    try {
      const path = 'personalized/mv';
      final response = await _dio.get(path);
      return PersonalizedMvEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取全部的mv
  Future<AllMvEntity?> getAllMV(int index, String area, String type,
      {int limit = 50}) async {
    try {
      const path = 'mv/all';
      final response = await _dio.get(path, queryParameters: {
        'area': area,
        'type': type,
        'limit': limit,
        'offset': (index - 1) * limit
      });
      return AllMvEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取视频播放地址
  Future<String?> getMVVideoUrl(int id) async {
    try {
      const path = 'mv/url';
      final response = await _dio.get(path, queryParameters: {
        'id': id,
      });
      return response.data['data']['url'];
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取歌单歌曲 分页
  Future<PlaylistDetailDynamicEntity?> getPlaylistDetailDynamic(int id) async {
    try {
      const path = 'playlist/detail/dynamic';
      final response = await _dio.get(path, queryParameters: {
        'id': id,
      });
      return PlaylistDetailDynamicEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取专辑内容
  Future<AlbumViewData?> getAlbumDetail(int id) async {
    try {
      const path = 'album';
      final response = await _dio.get(path, queryParameters: {'id': id});
      final albumDetailEntity = AlbumDetailEntity.fromJson(response.data);
      final response2 =
          await _dio.get('album/detail/dynamic', queryParameters: {'id': id});
      final AlbumDynamicEntity albumDynamicEntity =
          AlbumDynamicEntity.fromJson(response2.data);
      return AlbumViewData(albumDetailEntity, albumDynamicEntity);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取用户歌单
  Future<UserPlaylistEntity?> getUserPlayList(int userId) async {
    try {
      const path = 'user/playlist';
      final response = await _dio.get(path, queryParameters: {
        'uid': userId,
        'limit': 100,
      });
      return UserPlaylistEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///收藏或取消收藏专辑
  Future<bool> collectAlbum(int id, bool collect) async {
    try {
      const path = 'album/sub';
      await _dio.get(path, queryParameters: {'id': id, 't': collect ? 1 : 2});
      return true;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  ///关注或取关用户
  Future<bool> followUser(int id, bool follow) async {
    try {
      const path = 'follow';
      await _dio.get(path, queryParameters: {'id': id, 't': follow ? 1 : 2});
      return true;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  ///创建歌单
  Future<bool> createPlaylist(String name, bool privacy) async {
    try {
      const path = 'playlist/create';
      await _dio.get(
        path,
        queryParameters: {
          'name': name,
          'privacy': privacy ? '10' : null,
        },
      );
      return true;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  ///把歌曲添加到歌单 或从歌单里删除歌曲
  Future<bool> insertOrRemoveMusicToPlaylist(
      int playlistId, String musicTacksId, bool insert) async {
    try {
      const path = 'playlist/tracks';
      await _dio.get(
        path,
        queryParameters: {
          'pid': playlistId,
          'op': insert ? 'add' : 'del',
          'tracks': musicTacksId
        },
      );
      return true;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  ///更新歌单信息
  Future<bool> updatePlaylistInfo(
      int playlistId, String name, String desc, List<String> tags) async {
    try {
      const path = 'playlist/update';
      await _dio.get(
        path,
        queryParameters: {
          'id': playlistId,
          'name': name,
          'desc': desc,
          'tags': tags.join(';')
        },
      );
      return true;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  ///根据歌曲id获取歌曲下载地址
  Future<SongDownloadUrlEntity?> getSongDownloadUrl(int id) async {
    try {
      const path = 'song/download/url';
      final response = await _dio.get(
        path,
        queryParameters: {
          'id': id,
        },
      );
      return SongDownloadUrlEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取歌手介绍
  Future<ArtistDescEntity?> getArtistDesc(int id) async {
    try {
      const path = 'artist/desc';
      final response = await _dio.get(
        path,
        queryParameters: {
          'id': id,
        },
      );
      return ArtistDescEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取歌手歌曲
  Future<ArtistSongsEntity?> getArtistSongs(int id) async {
    try {
      const path = 'artists';
      final response = await _dio.get(
        path,
        queryParameters: {
          'id': id,
        },
      );
      return ArtistSongsEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取歌手mv
  Future<ArtistMvEntity?> getArtistMv(int id) async {
    try {
      const path = 'artist/mv';
      final response = await _dio.get(
        path,
        queryParameters: {
          'id': id,
        },
      );
      return ArtistMvEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取歌手专辑
  Future<ArtistAlbumEntity?> getArtistAlbum(int id) async {
    try {
      const path = 'artist/album';
      final response = await _dio.get(
        path,
        queryParameters: {
          'id': id,
        },
      );
      return ArtistAlbumEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///根据歌曲id获取歌曲播放地址
  Future<SongUrlEntity?> getSongPlayUrl(int id) async {
    try {
      const path = 'song/url';
      final response = await _dio.get(
        path,
        queryParameters: {
          'id': id,
        },
      );
      return SongUrlEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取广场歌单列表
  Future<PlaylistListEntity?> getPlaylistSquareList(
      int index, bool hot, String cat) async {
    try {
      const path = 'top/playlist';
      const limit = 50;
      final response = await _dio.get(
        path,
        queryParameters: {
          'limit': limit,
          'offset': (index - 1) * limit,
          'order': hot ? 'hot' : 'new',
          'cat': cat
        },
      );
      return PlaylistListEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取广场歌单分类
  Future<PlaylistCategoryEntity?> getPlaylistCategoryList() async {
    try {
      const path = 'playlist/catlist';

      final response = await _dio.get(path);
      return PlaylistCategoryEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取热门歌手
  Future<TopArtistsEntity?> getTopArtists() async {
    try {
      const path = 'top/artists';

      final response = await _dio.get(path);
      return TopArtistsEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///删除歌单
  Future<bool> deletePlayList(int playlistId) async {
    try {
      const path = 'playlist/delete';
      await _dio.get(
        path,
        queryParameters: {
          'id': playlistId,
        },
      );
      return true;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  ///删除歌单
  Future<bool> collectPlayList(int playlistId, bool collect) async {
    try {
      const path = 'playlist/subscribe';
      await _dio.get(
        path,
        queryParameters: {'id': playlistId, 't': collect ? '1' : '2'},
      );
      return true;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  ///更新用户信息
  Future<bool> updateMyProfile(int gender, int birthday, String name,
      String signature, int province, int city) async {
    try {
      const path = 'user/update';
      final response = await _dio.get(
        path,
        queryParameters: {
          'gender': gender,
          'birthday': birthday,
          'nickname': name,
          'signature': signature,
          'province': province,
          'city': city,
        },
      );
      final json = response.data;
      //失败 {message: 省份代码不合法, code: 400}
      if (json["code"] == 200) {
        return true;
      } else {
        showToast(json["message"]);
        return false;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  ///获取歌单热门标签
  Future<List<PlaylistTagsTags>> getPlaylistTags() async {
    try {
      const path = 'playlist/highquality/tags';
      final response = await _dio.get(
        path,
      );
      final entity = PlaylistTagsEntity.fromJson(response.data);
      return entity.tags ?? [];
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return [];
    }
  }

  ///获取某个歌单的收藏者
  Future<PlaylistSubscribersEntity?> playlistSubscribers(
      int id, int index) async {
    try {
      int limit = 50;
      const path = 'playlist/subscribers';
      final response = await _dio.get(path, queryParameters: {
        'id': id,
        'offset': (index - 1) * limit,
        'limit': limit,
      });
      return PlaylistSubscribersEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取音乐的播放地址 优先获取下载地址
  Future<String?> getSongUrl(int id) async {
    final downloadEntity = await HttpService.instance.getSongDownloadUrl(id);
    final downloadUrl = downloadEntity?.data?.url;
    if (downloadUrl != null) {
      return downloadUrl;
    }
    final playEntity = await HttpService.instance.getSongPlayUrl(id);
    if (playEntity == null) {
      return null;
    }
    final list = playEntity.data ?? [];
    if (list.isEmpty) {
      return null;
    }
    return list.first.url;
  }

  ///更新歌单封面
  Future<dynamic> updatePlaylistCover(int id, String filePath) async {
    const path = "playlist/cover/update";
    try {
      final response = await _dio.post(path,
          queryParameters: {
            'id': id,
          },
          data: FormData.fromMap({
            'imgFile': await MultipartFile.fromFile(filePath),
          }));
      return response.data;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///更新歌单封面
  Future<dynamic> uploadMusicToCloud(String filePath) async {
    try {
      const path = "cloud";

      final response = await _dio.post(path,
          data: FormData.fromMap({
            'songFile': await MultipartFile.fromFile(filePath),
          }));
      return response.data;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取云盘音乐
  Future<CloudSongEntity?> userCloudSongs(int index) async {
    try {
      const path = "user/cloud";

      final response = await _dio.get(path, queryParameters: {
        "limit": 50,
        "offset": (index - 1) * 50,
      });
      return CloudSongEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///删除云盘音乐
  Future<bool> deleteCloudSong(int id) async {
    try {
      const path = "user/cloud/del";
      await _dio.get(path, queryParameters: {"id": id});
      return true;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  ///收藏或取消收藏mv
  Future<bool> collectMV(int id, bool collect) async {
    try {
      const path = "mv/sub";
      await _dio.get(path, queryParameters: {
        "mvid": id,
        't': collect ? '1' : '2',
      });
      return true;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  ///喜欢mv
  Future<bool> likeMV(int id, bool like) async {
    try {
      const path = "resource/like";
      await _dio.get(path, queryParameters: {
        "id": id,
        'type': 1,
        't': like ? '1' : '2',
      });
      return true;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  ///初始化
  Future<void> init() async {
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      //加上时间戳 防止缓存
      options.queryParameters['timestamp'] =
          DateTime.now().microsecondsSinceEpoch;
      if (kDebugMode) {
        print('请求打印开始======');
        print("url = ${options.uri}");
        print("data = ${options.queryParameters}");
        print('header = ${options.headers}');
        print('请求打印结束======');
      }
      return handler.next(options);
    }, onResponse: (response, handler) {
      // if (kDebugMode) {
      //   print('响应打印开始======');
      //   print("url = ${response.realUri}");
      //   print("data = ${response.data}");
      //   print('header = ${response.headers}');
      //   print('响应打印结束======');
      // }
      return handler.next(response);
    }));
    final appDocDir = await getApplicationDocumentsDirectory();

    final cookieJar = PersistCookieJar(
        ignoreExpires: true,
        storage: FileStorage('${appDocDir.path}/.cookies/'));
    _dio.interceptors.add(CookieManager(cookieJar));
    _dio.options.baseUrl =
        // "https://music-win.cpolar.top/";
        "https://music.cpolar.top/";
  }
}
