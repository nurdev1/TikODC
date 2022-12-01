import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LikeWidget extends StatelessWidget {

  final int count;
  final Function()? onPressed;
  const LikeWidget(
      {Key? key, required this.count, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     Container(
       child: IconButton(
         onPressed:onPressed,
         icon: Image.asset("assets/icones/like.png",width: 80,height: 80,),
       ),
     ),
         Text(
           NumberFormat.compact().format(count),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: .8
          ),
        )
      ],
    );
  }
}
