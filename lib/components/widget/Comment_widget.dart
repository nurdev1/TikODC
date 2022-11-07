import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CommentWidget extends StatelessWidget {

  final int count;
  final Function()? onPressed;
  const CommentWidget(
      {Key? key, required this.count, this.onPressed,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 8.0,),
            child: Container(
              child: Center(
                child: IconButton(
                  onPressed:(){},
                  icon: Image.asset("assets/icones/com.png"),
                ),
              ),
            )
        ),
        Text(
          NumberFormat.compact().format(count),
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing:  .8
          ),
        )
      ],
    );
  }
}

