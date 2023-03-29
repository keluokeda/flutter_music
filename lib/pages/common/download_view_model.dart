import 'package:flutter/foundation.dart';
import 'package:flutter_download_manager/flutter_download_manager.dart';
import 'package:music/api/data_store.dart';
import 'package:music/api/http_service.dart';
import 'package:music/event/local_file_downloaded_event.dart';
import 'package:music/main.dart';
import 'package:oktoast/oktoast.dart';

import '../../entity/downloading_song.dart';
import '../../entity/song_item.dart';

class DownloadViewModel extends ChangeNotifier {
  final DownloadManager _downloadManager = DownloadManager();

  final List<DownloadingSong> _downloadingSongs = [];

  ///下载中的歌曲
  List<DownloadingSong> get downloadingSongs => _downloadingSongs;

  final List<DownloadingSong> _failedSongs = [];

  ///下载失败的歌曲
  List<DownloadingSong> get failedSongs => _failedSongs;

  DownloadViewModel() {
    init();
  }

  void init() async {
    while (true) {
      if (_downloadingSongs.isNotEmpty) {
        final target = _downloadingSongs[0];
        final result = await _downloadSong(target);
        _downloadingSongs.remove(target);
        if (result == false) {
          _failedSongs.add(target);
        }else{
          eventBus.fire(LocalFileDownloadedEvent(target.songItem));
        }
        notifyListeners();
      }

      await Future.delayed(const Duration(seconds: 3));
    }
  }

  ///删除下载任务
  void deleteDownloadTask(DownloadingSong song) {
    _downloadingSongs.remove(song);
    notifyListeners();
  }

  Future<bool> _downloadSong(DownloadingSong downloadingSong) async {
    final songUrl =
        await HttpService.instance.getSongUrl(downloadingSong.songItem.id);
    if (songUrl == null) {
      downloadingSong.downloadStatus = DownloadStatus.failed;
      notifyListeners();
      return false;
    }
    final task = await _downloadManager.addDownload(songUrl,
        "${DataStore.instance.downloadPath}${downloadingSong.songItem.id}.${_getFileExtensionFromUrl(songUrl)}");

    if (task == null) {
      downloadingSong.downloadStatus = DownloadStatus.failed;
      notifyListeners();
      return false;
    }

    task.progress.addListener(() {
      downloadingSong.progress = task.progress.value;
      notifyListeners();
    });

    task.status.addListener(() {
      downloadingSong.downloadStatus = task.status.value;
      notifyListeners();
    });

    final result = await _downloadManager.whenDownloadComplete(songUrl);

    return result == DownloadStatus.completed;
  }

  ///下载歌曲
  void download(List<SongItem> songs) {
    showToast('开始下载');
    _downloadingSongs.addAll(songs.map((e) => e.toDownloadingSong()));
    notifyListeners();
  }

  ///从url中获取文件拓展名
  String? _getFileExtensionFromUrl(String url) {
    final index = url.lastIndexOf('.');
    if (index == -1) {
      return null;
    }
    return url.substring(index + 1);
  }
}
