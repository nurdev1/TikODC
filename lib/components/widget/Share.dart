import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ShareWidget extends StatelessWidget {

  final int count;
  final Function()? onPressed;
  const ShareWidget({Key? key,required this.count,this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
        child: IconButton(
          onPressed:onPressed,
          icon: Image.asset("assets/icones/send.png"),
        ),
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
