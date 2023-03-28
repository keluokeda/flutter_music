import 'dart:async';

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

  late StreamSubscription<void> subscription;

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

    subscription = _audioPlayer.onPlayerComplete.listen((event) {
      if (kDebugMode) {
        print('播放完成了 $currentPlayingSong');
      }

      if (songsPlayMode == SongsPlayMode.one) {
        //单曲循环
        if (currentPlayingSong != null) {
          playSong(currentPlayingSong!);
        }
      } else {
        final index = songList.indexOf(currentPlayingSong!);
        final newIndex = (index + 1) % songList.length;
        playSong(songList[newIndex]);
      }
    });
  }

  ///播放音乐
  void playSong(SongItem songItem) async {
    final index = _songList.map((e) => e.id).toList().indexOf(songItem.id);

    if (index == -1) {
      insertSongList([songItem]);
      return;
    }
    songList[index] = songItem;
    _currentPlayingSong = songItem;

    final musicUrl = await _getSongUrl(songItem.id);

    if (kDebugMode) {
      print('要播放的音乐地址是 $musicUrl');
    }
    if (musicUrl != null) {
      _audioPlayer.play(UrlSource(musicUrl));
    }

    notifyListeners();
  }

  ///会替换当前播放列表
  void playSongList(List<SongItem> songs) {
    if (songs.isEmpty) {
      return;
    }
    _songList.clear();
    _songList.addAll(songs);
    notifyListeners();
    playSong(songs.first);
  }

  ///插入音乐到当前列表
  void insertSongList(List<SongItem> songs) {
    if (songs.isEmpty) {
      return;
    }
    if (_songList.isEmpty) {
      playSongList(songs);
    } else {
      // _songList.addAll(songs);
      // notifyListeners();
      //防止插入重复的歌曲进去
      for (var element in songs) {
        if (!_songList.map((e) => e.id).contains(element.id)) {
          _songList.add(element);
        }
      }
      notifyListeners();
    }

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

  ///清空当前播放列表
  void clearSongList() {
    _songList.clear();
    notifyListeners();
    _audioPlayer.release();
  }

  @override
  void dispose() {
    super.dispose();
    subscription.cancel();
  }

  ///移除
  void removeSong(SongItem songItem) {
    if (_songList.remove(songItem)) {
      if (songItem == currentPlayingSong) {
        _audioPlayer.release();
        _currentPlayingSong = null;
      }
      notifyListeners();
    } else {
      if (kDebugMode) {
        print('移除失败 ${songItem.name}');
      }
    }
  }

  ///下一首播放
  void playSongNext(SongItem songItem) {

    if(songItem.id == currentPlayingSong?.id){
      //要进行下一首播放的音乐是当前正在播放的音乐
      return;
    }

    final index = songList.map((e) => e.id).toList().indexOf(songItem.id);

    if (index == -1) {
      //当前音乐列表中没有这首音乐
     if(currentPlayingSong == null){
       //当前没有播放任何音乐
       playSong(songItem);
       return;
     }
     final playingSongIndex = songList.indexOf(currentPlayingSong!);
     _songList.insert(playingSongIndex+1, songItem);
     notifyListeners();
    }else{
      //要进行下一首播放的音乐已经在当前的播放列表中
      final playingSongIndex = songList.indexOf(currentPlayingSong!);
      _songList.removeWhere((element) => element.id == songItem.id);
      _songList.insert(playingSongIndex+1, songItem);

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
}
