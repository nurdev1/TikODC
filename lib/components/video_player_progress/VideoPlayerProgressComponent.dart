import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoPlayerProgressComponent extends StatelessWidget {
  const VideoPlayerProgressComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Container(
        height: 2,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
      ),
    );
  }
}
