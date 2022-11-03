import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileComponent extends StatelessWidget {

  final Map<String, dynamic> item;
  const ProfileComponent(
      {Key? key, required this.item }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text(
            "@${item['profile'] ['username']}",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0),
          ),
        ),
        Text(
          "${item ['description']}",
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.0,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
