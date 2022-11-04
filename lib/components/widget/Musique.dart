import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusiqueWidget extends StatelessWidget {

  final Function()? onPressed;
  const MusiqueWidget({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: IconButton(
          onPressed:onPressed,
          icon: const Icon(
            Icons.music_note,
            color: Colors.white,
            size:25.0,
          ),
        ),
      ),
    );
  }
}
