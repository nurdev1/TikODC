import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/components/video_player_progress/VideoPlayerProgressComponent.dart';
import 'package:video_player/video_player.dart';

class VideoComponentPlayer extends StatefulWidget {
  final String media;

  const VideoComponentPlayer({
    Key? key,
    required this.media,
  }) : super(key: key);

  @override
  State<VideoComponentPlayer> createState() => _VideoComponentPlayerState();
}

class _VideoComponentPlayerState extends State<VideoComponentPlayer> {
  late VideoPlayerController _controller;
  double _position = 0.0;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(
      widget.media,
    )..initialize().then((_) {
        setState(() {});

    //   _controller.play();
      });

    _controller.setLooping(true);
  }

  @override
  Widget build(BuildContext context) {
    /*return Center(
      child: _controller.value.isInitialized
        ? VideoPlayer(_controller)
       : Container(),
    );*/

    return Stack( children: [
        _controller.value.isInitialized
            ? SizedBox(
                child: VideoPlayer(_controller),
              )
            : Container(),
         Positioned(
            bottom: 70.0,
            left: 0.0,
            right: 0.0,
            child: VideoPlayerProgressComponent(progress:_position,
            onTap: (position) {
                    _controller.seekTo(Duration(
                    milliseconds:
                  (_controller.value.duration.inMilliseconds * position).toInt()));

                    setState(() => {
                      _position = position
                    });
            }
        ),
    ),
      ],
    );
  }
}
