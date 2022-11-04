import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShareWidget extends StatelessWidget {
  final Function()? onPressed;
  const ShareWidget({Key? key,this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: IconButton(
          onPressed:onPressed,
          icon: const Icon(
            Icons.share,
            color: Colors.white,
            size:25.0,
          ),
        ),
      ),
    );
  }
}
