import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EnteteComponent extends StatelessWidget {
  const EnteteComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
        //  height: 100,
         padding: const EdgeInsets.only(top: 40),
          child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Text(
    'Suivis',
    style: TextStyle(
    color: Colors.white54,
    fontWeight: FontWeight.w600,
    ),
    ),
    SizedBox(width: 20),
    Text(
    'Pour toi',
    style: TextStyle(
    color: Colors.white54,
    fontWeight: FontWeight.w600,
    ),
    ),
    ],
    ),
        )
      ],
    );
  }
}
