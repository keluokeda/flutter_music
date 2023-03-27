import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:music/api/http_service.dart';
import 'package:music/event/playlist_songs_updated_event.dart';
import 'package:music/main.dart';
import 'package:oktoast/oktoast.dart';

class MusicViewModel extends ChangeNotifier {
  final AudioPlayer audioPlayer = AudioPlayer();

  ///往歌单插入或删除一组歌曲
  Future<bool> insertOrRemoveMusicListToPlaylist(
      List<int> musicList, int playlistId, bool insert) async {
    final result = await HttpService.instance.insertOrRemoveMusicToPlaylist(
        playlistId, musicList.map((e) => e.toString()).join(','), insert);
    showToast(result ? '操作成功' : '操作失败');
    if (result) {
      eventBus.fire(PlaylistSongsUpdatedEvent(playlistId));
    }
    return result;
  }

  ///往歌单插入或删除一首歌曲
  @Deprecated('弃用')
  Future<bool> insertMusicToPlaylist(
      int playlistId, String tracks, bool insert) async {
    final result = await HttpService.instance
        .insertOrRemoveMusicToPlaylist(playlistId, tracks, insert);
    showToast(result ? '收藏成功' : '收藏失败');
    if (result) {
      eventBus.fire(PlaylistSongsUpdatedEvent(playlistId));
    }
    return result;
  }

  MusicViewModel() {
    const AudioContext audioContext = AudioContext(
      iOS: AudioContextIOS(
        category: AVAudioSessionCategory.ambient,
        options: [
          AVAudioSessionOptions.defaultToSpeaker,
          AVAudioSessionOptions.mixWithOthers,
        ],
      ),
      android: AudioContextAndroid(
        isSpeakerphoneOn: true,
        stayAwake: true,
        contentType: AndroidContentType.sonification,
        usageType: AndroidUsageType.assistanceSonification,
        audioFocus: AndroidAudioFocus.none,
      ),
    );
    AudioPlayer.global.setGlobalAudioContext(audioContext);
  }

  ///播放音乐
  void playMusic(int id) async {
    final playUrl = await _getSongUrl(id);
    if (playUrl != null) {
      await audioPlayer.play(UrlSource(playUrl));
    }
  }
}

///获取音乐的播放地址 优先获取下载地址
Future<String?> _getSongUrl(int id) async {
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
