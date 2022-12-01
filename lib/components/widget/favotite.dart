import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tikodc/tikodc/OTP.dart';

class FavoriteWidget extends StatelessWidget {

  final int count;
  final Function()? onPressed;
  const FavoriteWidget({Key? key,required this.count,this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context)=> OTP()));
      },
      child: Column(
        children: [
        Container(
          child: IconButton(
            onPressed:onPressed,
            icon: Image.asset("assets/icones/favo.png",width: 80,),
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
      ),
    );
  }
}
