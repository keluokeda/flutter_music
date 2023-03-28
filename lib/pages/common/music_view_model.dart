import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:music/api/http_service.dart';
import 'package:music/entity/songs_play_mode.dart';
import 'package:music/event/playlist_songs_updated_event.dart';
import 'package:music/main.dart';
import 'package:oktoast/oktoast.dart';

import '../../entity/song_item.dart';

class MusicViewModel extends ChangeNotifier {
  final AudioPlayer _audioPlayer = AudioPlayer();

  final List<SongItem> _songList = [];

  ///当前播放音乐列表
  List<SongItem> get songList => _songList;

  SongItem? _currentPlayingSong;

  ///当前正在播放的音乐
  SongItem? get currentPlayingSong => _currentPlayingSong;

  SongsPlayMode _songsPlayMode = SongsPlayMode.repeat;

  SongsPlayMode get songsPlayMode => _songsPlayMode;

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

  ///当前播放状态
  PlayerState get state => _audioPlayer.state;

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
        contentType: AndroidContentType.music,
        usageType: AndroidUsageType.media,
        audioFocus: AndroidAudioFocus.gain,
      ),
    );
    AudioPlayer.global.setGlobalAudioContext(audioContext);
  }

  ///播放音乐
  void playSong(SongItem songItem) {
    _currentPlayingSong = songItem;
    notifyListeners();
  }

  ///会替换当前播放列表
  void playMusicList(List<SongItem> songs) {
    _songList.clear();
    _songList.addAll(songs);
    notifyListeners();
  }

  ///插入音乐到当前列表
  void insertMusicList(List<SongItem> songs) {
    _songList.addAll(songs);
    notifyListeners();
  }

  ///暂停播放
  void pause() async {
    await _audioPlayer.pause();
    notifyListeners();
  }

  ///恢复
  void resume() async {
    await _audioPlayer.resume();
    notifyListeners();
  }

  void changePlayMode() {
    _songsPlayMode = _songsPlayMode.next();
    notifyListeners();
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
