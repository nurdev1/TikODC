import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusiqueWidget extends StatelessWidget {

  final Function()? onPressed;
  const MusiqueWidget({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      child: Center(
        child: IconButton(
          onPressed:onPressed,
          icon: const Icon(
            Icons.queue_music_rounded,
            color: Colors.white,
            size:25.0,
          ),
        ),
      );
    return Container(
      child: ClipOval(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10.0,
            sigmaY: 10.0,
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.0),
            ),
            child: Center(
              child: IconButton(
                onPressed:onPressed,
                icon: const Icon(
                  Icons.queue_music_rounded,
                  color: Colors.white,
                  size:35.0,
                ),
              ),
              ),
            ),
          ),
        ),
      );
  }
}
