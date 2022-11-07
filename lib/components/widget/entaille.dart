import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EnteteWidget extends StatelessWidget {
  const EnteteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
        //  height: 100,
         padding: const EdgeInsets.only(top: 40),
          child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children:  [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
    'Suivis',
    style: TextStyle(
    color: Colors.white,
      fontSize: 18,
    fontWeight: FontWeight.w600,
    ),
    ),
      ),
    SizedBox(width: 20),
    Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
      'Pour toi',
      style: TextStyle(
      color: Colors.white54,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      ),
      ),
    ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: IconButton(onPressed: (){},
            icon: Image.asset("assets/icones/cherch.png"),
      ),
      ),
    ],
    ),
        )
      ],

    );
  }
}
