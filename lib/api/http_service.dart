import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:music/entity/album_detail_entity.dart';
import 'package:music/entity/album_dynamic_entity.dart';
import 'package:music/entity/album_view_data.dart';
import 'package:music/entity/artist_album_entity.dart';
import 'package:music/entity/artist_desc_entity.dart';
import 'package:music/entity/artist_mv_entity.dart';
import 'package:music/entity/artist_songs_entity.dart';
import 'package:music/entity/login_status_entity.dart';
import 'package:music/entity/message_list_entity.dart';
import 'package:music/entity/playlist_detail_dynamic_entity.dart';
import 'package:music/entity/playlist_detail_entity.dart';
import 'package:music/entity/playlist_subscribers_entity.dart';
import 'package:music/entity/playlist_tags_entity.dart';
import 'package:music/entity/playlist_tracks_entity.dart';
import 'package:music/entity/recommend_songs_entity.dart';
import 'package:music/entity/song_download_url_entity.dart';
import 'package:music/entity/song_url_entity.dart';
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

  ///初始化
  Future<void> init() async {
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      //加上时间戳 防止缓存
      options.queryParameters['timestamp'] =
          DateTime.now().microsecondsSinceEpoch;
      return handler.next(options);
    }, onResponse: (response, handler) {
      if (kDebugMode) {
        print('响应打印开始======');
        print("url = ${response.realUri}");
        print("data = ${response.data}");
        print('header = ${response.headers}');
        print('响应打印结束======');
      }
      return handler.next(response);
    }));
    final appDocDir = await getApplicationDocumentsDirectory();

    final cookieJar = PersistCookieJar(
        ignoreExpires: true,
        storage: FileStorage('${appDocDir.path}/.cookies/'));
    _dio.interceptors.add(CookieManager(cookieJar));
    _dio.options.baseUrl = "https://music.cpolar.top/";
  }
}
