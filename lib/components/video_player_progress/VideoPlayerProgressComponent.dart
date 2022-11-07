import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoPlayerProgressComponent extends StatelessWidget {

  final progress;
  final Function(double Position)? onTap;

  const VideoPlayerProgressComponent(
      {Key? key, this.progress = 0, this.onTap,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (TapUpDetails details) {
        if(onTap!= null) {
          onTap!(double.parse(
            (details.globalPosition.dx / MediaQuery.of(context).size.width).toStringAsFixed(2)
          ));
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 4,
        ),
        child: Stack(
            children: [
              Container(
                height: 2,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Container(
                height: 2,
                width: MediaQuery
                    .of(context)
                    .size
                    .width * progress,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ]
        ),
      ),
    );
    //color:const Color(0xFF0E3311),
  }
}
