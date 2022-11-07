import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tikodc/tikodc/AnimationPage.dart';

class TikODC extends StatelessWidget {
  const TikODC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikODC',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body:SingleChildScrollView(
        child: Column(
          children: [
        AnimationPage(
        delais: 1000,child: Container(
          alignment: Alignment.center,
        child: Image.asset('assets/icones/tiktok.png',
            color: Colors.white,height: 200,
        ),
        ),

    ),
          AnimationPage(
              delais: 1000,
              child: Column(
                children: [
                  Text("TikODC",
                    style: TextStyle(
                      color:Colors.white
                    ),
                  ),
                ],

              ))
        ],
        ),
    ),
      ),
    );
  }
}
