import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageProfil extends StatelessWidget {
  final Map<String, dynamic> profile;

  const PageProfil({Key? key,required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color:  Colors.white,
            width: 2,
          )
      ),
      child: CircleAvatar(
        radius: 25.0,
        backgroundImage: AssetImage(( profile["avatar"]),
        ),
      ),
    );
  }
}
