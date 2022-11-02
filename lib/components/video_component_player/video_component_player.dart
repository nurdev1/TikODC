import 'package:flutter/cupertino.dart';
import 'package:video_player/video_player.dart';

class VideoComponentPlayer extends StatefulWidget {
  const VideoComponentPlayer({Key? key}) : super(key: key);

  @override
  State<VideoComponentPlayer> createState() => _VideoComponentPlayerState();
}

class _VideoComponentPlayerState extends State<VideoComponentPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(
      'assets/videos/Alahuma.mp4',)
      ..initialize().then((_) {
        setState(() {});

        _controller.play();
      });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: _controller.value.isInitialized
        ? VideoPlayer(_controller)
       : Container(),
    );

    /*return Center(
      child: _controller.value.isInitialized
      ?SizedBox(
        width: _controller.value.size.width,
        height: _controller.value.size.width,
        child: VideoPlayer(_controller),
      )
       : Container(),
    );
*/
  }
}
