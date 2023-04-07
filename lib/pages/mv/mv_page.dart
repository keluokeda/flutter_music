import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MvPage extends StatefulWidget {
  const MvPage({Key? key}) : super(key: key);

  @override
  State<MvPage> createState() => _MvPageState();
}

class _MvPageState extends State<MvPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'http://vodkgeyttp8.vod.126.net/cloudmusic/02c0/core/616c/1a0a380b00d8632d6901e6ed26d7528c.mp4?wsSecret=109313fa49b90973b4852ba19e988451&wsTime=1680868430')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
        _controller.play();
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('mv'),
      ),
      body: _controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
          : Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
